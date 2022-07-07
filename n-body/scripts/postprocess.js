const fs   = require("fs");
const path = require("path");

const filename = path.join(__dirname, "..", "build" , "index.js");
const source = fs.readFileSync(filename, { encoding: "utf8" });
// remove uncheckeds
const target = source.replace(/unchecked/g, "")
fs.writeFileSync(filename, target);
