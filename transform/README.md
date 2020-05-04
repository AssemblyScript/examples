Compiler transforms
===================

An [AssemblyScript](http://assemblyscript.org) example of using compiler transforms to hook into the compilation process.

Instructions
------------

* [JavaScript transform](./mytransform.js)<br />
  An ES6 JavaScript transform. Recommended.

* [TypeScript transform](./mytransform.ts)<br />
  A transform written in TypeScript. This works currently because the compiler
  utilizes ts-node anyway, so can as well transpile the transform to ES6.

See [package.json](./package.json) on how to utilize the transforms with `asc`.
You may also run

```
$> npm install
$> npm test
```

to verify that it works.
