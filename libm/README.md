libm
====

An [AssemblyScript](http://assemblyscript.org) example. Exposes AssemblyScript's math routines for double and single precision as a library.

```ts
const libm = require("path/to/libm");
const libmf = libm.libmf;
...
```

Both `libm` and `libmf` have the same general interface as JavaScript's `Math`, with `libmf` doing single precision math.

Instructions
------------

First, install the development dependencies:

```
$> npm install
```

Now, to build [assembly/libm.ts](./assembly/libm.ts) to `build/libm.wasm` respectively [assembly/libmf.ts](./assembly/libmf.ts) to `build/libmf.wasm`, run:

```
$> npm run asbuild
```

Afterwards, run

```
$> npm test
```

to verify that it works.
