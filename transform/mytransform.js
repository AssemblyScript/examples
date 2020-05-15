const { Transform } = require("assemblyscript/cli/transform");
const { SourceKind, ElementKind } = require("assemblyscript");
const binaryen = require("binaryen");

class MyTransform extends Transform {
  afterParse(parser) {
    this.log("[mytransform.js] afterParse called, baseDir = " + this.baseDir);
    var sources = this.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
  afterInitialize(program) {
    this.log("[mytransform.js] afterInitialize called");
    var elements = program.elementsByName;
    elements.forEach(element => this.log("  " + element.internalName + " [" + ElementKind[element.kind] + "]"));
  }
  afterCompile(asModule) {
    this.log("[mytransform.js] afterCompile called");
    var module = binaryen.wrapModule(asModule.ref);
    this.log(module.emitBinary());
  }
}

module.exports = MyTransform;
