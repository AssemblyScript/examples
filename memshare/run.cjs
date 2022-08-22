const fs = require('fs');
const wasmBuffer = fs.readFileSync('build/debug.wasm');

const imports = {};
imports.env = imports.env || {};
var sharedMemory = new WebAssembly.Memory({ initial: 1 });//request one page memory
var globalOffset=0;
Object.assign(imports.env, {
  memory: sharedMemory,
  trace: function (offset, length) {
    var bytes = new Uint8Array(sharedMemory.buffer, offset, length*2);
    globalOffset = offset;
    var string = new TextDecoder('utf8').decode(bytes);
    console.log(string);
  },
  abort(_msg, _file, line, column) {
    console.error("abort called at index.ts:" + line + ":" + column);
  }
});

WebAssembly.instantiate(wasmBuffer, imports).then(wasmModule => {
  const { test,memory } = wasmModule.instance.exports;
  sharedMemory = memory;
  test();
  var bytes = new Uint8Array(sharedMemory.buffer, globalOffset, 6);
  bytes[2] = 104;
  test();
});
