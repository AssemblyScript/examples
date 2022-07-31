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

```bash
$> npm test [steps=1000000]
```

Benchmark

=========

***Environment:***

- MacBook Pro (15-inch, 2019)
- macOS 12.5.0
- node.js v18.7.0
- rustc 1.64.0-nightly (0f4bcadb4 2022-07-30)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **1606**        | **1.8**        |
| JavaScript              | 11640           | 5*             |
| Rust WASM               | 1611            | 2              |

___* unminified___
