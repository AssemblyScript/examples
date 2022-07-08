const fs   = require("fs");
const path = require("path");

const filename = path.join(__dirname, "..", "build" , "index.js");
const source = fs.readFileSync(filename, { encoding: "utf8" });

function removeUnchecked(str) {
  return str
    .replace(/unchecked\((.*?)\)/g, (_, _1) => _1)
    .replace(/unchecked\((.*?)\)/g, (_, _1) => _1);
}

fs.writeFileSync(filename, removeUnchecked(source));
