const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /遠くへ行くだ。/g,
  "遠くへ行く活動だ。"
).replace(
  /負荷を上げていくだ。/g,
  "負荷を上げていく活動だ。"
).replace(
  /高めていくだ。/g,
  "高めていく活動だ。"
).replace(
  /が、の最適だ。/g,
  "が、このタイプに最適だ。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
