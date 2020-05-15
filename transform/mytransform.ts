import { Transform } from "assemblyscript/cli/transform";
import { Parser, Module, SourceKind, ElementKind, Program } from "assemblyscript";
import * as binaryen from "binaryen";

class MyTransform extends Transform {
  afterParse(parser: Parser): void {
    this.log("[mytransform.ts] afterParse called, baseDir = " + this.baseDir);
    var sources = this.program.sources;
    sources.forEach(source => this.log("  " + source.internalPath + " [" + SourceKind[source.sourceKind] + "]"));
  }
  afterInitialize(program: Program) {
    this.log("[mytransform.ts] afterInitialize called");
    var elements = program.elementsByName;
    elements.forEach(element => this.log("  " + element.internalName + " [" + ElementKind[element.kind] + "]"));
  }
  afterCompile(asModule: Module): void {
    this.log("[mytransform.ts] afterCompile called");
    var module = binaryen.wrapModule(asModule.ref);
    this.log(module.emitBinary());
  }
}

console.log()

export = MyTransform;
