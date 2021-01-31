const fs = require("fs");
const path = require("path");

const filename = path.join(__dirname, "..", "build" , "as_nbody.js");
var source = fs.readFileSync(filename, { encoding: "utf8" });
source = source.replace(/^export var ([^ ]+) =/mg, ($0, $1) => "exports." + $1 + " = ");
source = source.replace("import { abort } from 'env';", "function abort() { throw new Error('abort'); }");
fs.writeFileSync(filename, source);
