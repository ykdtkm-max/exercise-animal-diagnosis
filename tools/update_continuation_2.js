const fs = require('fs');

const path = "/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js";
const content = fs.readFileSync(path, "utf-8");
const jsonStr = content.match(/window\.EXERCISE_V2_TYPES = (\{.*\});/)[1];
const data = JSON.parse(jsonStr);

for (const key in data) {
  let text = data[key].continuation_text;
  const parts = text.split("\n\n");
  if (parts.length > 2) {
    // Join the last two parts to make it 2 paragraphs
    data[key].continuation_text = parts[0] + "\n\n" + parts.slice(1).join("");
  }
}

const newContent = content.replace(/window\.EXERCISE_V2_TYPES = \{.*\};/, `window.EXERCISE_V2_TYPES = ${JSON.stringify(data)};`);
fs.writeFileSync(path, newContent, "utf-8");

const parsedPath = "/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-parsed.json";
if (fs.existsSync(parsedPath)) {
  const parsedContent = fs.readFileSync(parsedPath, "utf-8");
  const parsedData = JSON.parse(parsedContent);
  for (const key in parsedData) {
    let text = parsedData[key].continuation_text;
    const parts = text.split("\n\n");
    if (parts.length > 2) {
      parsedData[key].continuation_text = parts[0] + "\n\n" + parts.slice(1).join("");
    }
  }
  fs.writeFileSync(parsedPath, JSON.stringify(parsedData, null, 2), "utf-8");
}

console.log("Done.");
