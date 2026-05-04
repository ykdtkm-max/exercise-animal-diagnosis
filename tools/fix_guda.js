const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /泳ぐだ。/g,
  "泳ぐ活動だ。"
).replace(
  /楽しめるが、/g,
  "楽しめる環境が、"
).replace(
  /最大限に活かする。/g,
  "最大限に活かせる。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
