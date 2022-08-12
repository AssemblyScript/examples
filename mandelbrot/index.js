const fs = require("fs");
const compiled = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/release.wasm"));
const imports = {
  env: {
    "Math.log": Math.log,
    "Math.log2": Math.log2,
  }
};
Object.defineProperty(module, "exports", {
  get: () => new WebAssembly.Instance(compiled, imports).exports
});
