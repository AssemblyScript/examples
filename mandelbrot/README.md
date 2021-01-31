Mandelbrot Set
==============

An [AssemblyScript](http://assemblyscript.org) example. Renders the Mandelbrot set to a canvas. Compiles to ~590 bytes of optimized WASM.

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
