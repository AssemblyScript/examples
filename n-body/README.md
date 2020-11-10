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

to start a <a href="http://localhost:9080">local server</a>. Should also automatically launch a browser.

To run the benchmark:

```
$> npm test [steps=1000000]
```

Benchmark
=========

***Environment:***
- MacBook Pro (15-inch, 2019)
- macOS 10.15.6
- node.js v14.9.0
- rustc 1.46.0-nightly (f781babf8 2020-07-01)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **1589**        | **1.6**        |
| AssemblyScript ASMJS    | 2522            | 10*            |
| JavaScript              | 1948            | 5*             |
| Rust WASM               | 1619            | 2              |

___* unminified___
