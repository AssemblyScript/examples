import * as assemblyscript from "assemblyscript";
import { Transform } from "assemblyscript/transform";
import binaryen from "binaryen";

class MyTransform extends Transform {
  afterParse(parser) {
    this.log("[mytransform.js] afterParse called, baseDir = " + this.baseDir);
    var sources = this.program.sources;
    sources.forEach((source) =>
      this.log("  " + source.internalPath + " [" + assemblyscript.SourceKind[source.sourceKind] + "]")
    );
  }
  afterInitialize(program) {
    this.log("[mytransform.js] afterInitialize called");
    var elements = program.elementsByName;
    elements.forEach((element) =>
      this.log("  " + element.internalName + " [" + assemblyscript.ElementKind[element.kind] + "]")
    );
  }
  afterCompile(asModule) {
    this.log("[mytransform.js] afterCompile called");
    var module = binaryen.wrapModule(asModule.ref);
    this.log(module.emitBinary());
  }
}

export default MyTransform;
