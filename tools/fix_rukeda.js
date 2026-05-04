const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /重くするけだ。/g,
  "重くするだけだ。"
).replace(
  /消耗させるけだ。/g,
  "消耗させるだけだ。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
