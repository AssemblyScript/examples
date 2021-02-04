Interference effect
===================

An [AssemblyScript](http://assemblyscript.org) example. Colin Eberhardt's and Ben Smith's [WebAssembly interference effect](https://github.com/ColinEberhardt/wasm-interference), if it was written in AssemblyScript and utilizing 32-bit floating point math.

Instructions
------------

First, install the development dependencies:

```
$> npm install
```

Now, to build [assembly/index.ts](./assembly/index.ts) to an untouched and an optimized `.wasm` including their respective `.wat` representations, run:

```
$> npm run asbuild
```

Afterwards, run

```
$> npm start
```

to start a local server.
