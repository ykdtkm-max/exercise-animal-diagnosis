const fs = require('fs');
const content = fs.readFileSync('types-data.js', 'utf8');

const match = content.match(/concept:\s*`([\s\S]*?)`/);
if (match) {
  console.log("Found concept with backticks:");
  console.log(match[1].substring(0, 100) + "...");
} else {
  const match2 = content.match(/concept:\s*'([\s\S]*?)'/);
  if (match2) {
    console.log("Found concept with single quotes:");
    console.log(match2[1].substring(0, 100) + "...");
  } else {
    console.log("Could not find concept field.");
  }
}
