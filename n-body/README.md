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
- macOS 12.4.0
- node.js v18.4.0
- rustc 1.42.0-nightly (3a3f4a7cb 2019-12-28)

***Results:***

|        Target           |  Time, ***ms*** | Size, ***KB*** |
|-------------------------|-----------------|----------------|
| **AssemblyScript WASM** | **1599**        | **1.8**        |
| JavaScript              | 11608           | 5*             |
| Rust WASM               | 1631            | 2              |

___* unminified___
