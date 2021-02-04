N-body system
=============

An [AssemblyScript](http://assemblyscript.org) example. This is actually a benchmark - visualizing it just so happened.

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

To run the benchmark:

```
$> npm test [steps=1000000]
```

Benchmark
=========

***Environment:***
- MacBook Pro (15-inch, 2019)
- macOS 11.2
- node.js v15.8.0
- rustc 1.51.0-nightly (b12290861 2021-01-29)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **1633**        | **1.7**        |
| AssemblyScript ASMJS    | 2579            | 9*             |
| JavaScript              | 1933            | 5*             |
| Rust WASM               | 1642            | 2              |

___* unminified___
