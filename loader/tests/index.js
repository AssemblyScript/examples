// Load the node module exporting our WebAssembly module
const myModule = require("../index");

// Obtain the runtime helpers for
const {
  // memory management
  __newString, __newArray,
  // garbage collection
  __pin, __unpin,
  // and interop
  __getString, __getArray, __getArrayView
} = myModule;

// Test for Example 1: Passing a string from WebAssembly to JavaScript.
{
  console.log("Example 1:");

  // Obtain a pointer to our string in the module's memory.
  const ptr = __pin(myModule.getHello());

  // Print its contents
  console.log("  " + __getString(ptr));

  __unpin(ptr); // it is ok if the string becomes garbage collected now
}

// Test for Example 2: Passing a string from JavaScript to WebAssembly.
{
  console.log("Example 2:");

  // Allocate a string in the module's memory and pin it externally
  const ptr = __pin(__newString("Hello world (I am a JavaScript string)"));

  // Pass it to our WebAssembly export, which is going to print it using our custom console
  myModule.sayHello(ptr);

  __unpin(ptr); // it is ok if the string becomes garbage collected now
}

// Test for Example 4: Passing an array from WebAssembly to JavaScript.
{
  console.log("Example 4:");

  // Obtain a pointer to our array in the module's memory.
  const ptr = __pin(myModule.getMyArray(10));

  // Obtain a live view on it
  const view = __getArrayView(ptr);
  console.log("  " + view + " (view)");

  // Obtain a copy of it (modifying the live view does not modify the copy)
  const copy = __getArray(ptr);
  console.log("  " + copy + " (copy)");

  __unpin(ptr); // it is ok if the array becomes garbage collected now
}

// Test for Example 5: Passing an array from JavaScript to WebAssembly.
{
  console.log("Example 5:");

  // Allocate a new array in WebAssembly memory and get a view on it. Note that
  // we have to specify the runtime id of the array type we want to allocate, so
  // we export its id (`idof<Int32Array>`) from the module to do so.
  const ptr = __pin(__newArray(myModule.Int32Array_ID, [ 1, 2, 3 ]));
  const view = __getArrayView(ptr);
  const copy = __getArray(ptr);

  // Compute its sum
  console.log("  Sum of " + view + " is " + myModule.computeSum(ptr));

  // Modify the first element in place, and compute the new sum
  view[0] = 42;
  console.log("  Sum of " + view + " is " + myModule.computeSum(ptr));

  // The initial copy remains unchanged and is not linked to `ptr`
  console.log("  Unmodified copy: " + copy);

  __unpin(ptr); // it is ok if the array becomes garbage collected now
}

// Test for Example 6: WebAssembly arrays of WebAssembly strings.
{
  console.log("Example 6:");

  // Allocate a new array, but this time its elements are pointers to strings.
  const elemPtrs = [ "hello", "world" ].map(v => __pin(__newString(v)));
  const inPtr = __pin(__newArray(myModule.ArrayOfStrings_ID, elemPtrs));

  // The array keeps its values alive from now on
  elemPtrs.forEach(__unpin);

  // Provide our array of lowercase strings to WebAssembly, and obtain the new
  // array of uppercase strings before printing it.
  const outPtr = __pin(myModule.capitalize(inPtr));
  console.log("  Uppercased: " + __getArray(outPtr).map(__getString));

  __unpin(inPtr); // it is ok if the arrays becomes garbage collected now
  __unpin(outPtr);

  // Note that Example 6 is not an especially efficient use case and one would
  // typically rather avoid the overhead and do this in JavaScript directly.
}

// Test for Example 7: Using custom classes.
{
  console.log("Example 7:");

  // Create a new player. Note that the loader makes a nice object structure
  // of our exports, here a class `Player` within the `Game` namespace. So
  // let's call the `Player` constructor:
  let player;
  {
    const namePtr = __pin(__newString("Gordon Freeman"));
    player = new myModule.Game.Player(namePtr);
    __pin(player);
    __unpin(namePtr);
    // Pro tip: Pinning is optional in this exact case
  }

  // Let's see how our player looks now by calling toString
  {
    const strPtr = __pin(player.toString());
    console.log("  Player (new): " + __getString(strPtr));
    __unpin(strPtr);
    // Pro tip: Pinning is optional in this exact case
  }

  // Move them and log again
  {
    player.move(10, 20);
    const strPtr = __pin(player.toString());
    console.log("  Player (moved): " + __getString(strPtr));
    __unpin(strPtr);
    // Pro tip: Pinning is optional in this exact case
  }

  // Obtaining just the position. Note that we can `wrap` any pointer with
  // the matching class within the object structure made by the loader, and
  // that a position's x and y properties are just basic values, not objects,
  // so tracking references does not apply to them.
  {
    const positionPtr = __pin(player.position);
    const position = myModule.Game.Position.wrap(positionPtr);
    console.log("  Position (wrapped): " + position.x + "/" + position.y);

    position.x -= 100;
    position.y += 200;

    const strPtr = __pin(position.toString());
    console.log("  Position (moved): " + __getString(strPtr));
    __unpin(strPtr);

    __unpin(positionPtr);
  }

  // Finish 'em
  {
    player.kill();
    const strPtr = __pin(player.toString());
    console.log("  Player (finished): " + __getString(strPtr));
    __unpin(strPtr);
    // Pro tip: Pinning is optional in this exact case
  }

  __unpin(player); // a tidy house, a tidy mind.
}

// Interested in all the details? https://docs.assemblyscript.org/details :)
