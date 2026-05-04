const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /立派なだ。/g,
  "立派な運動だ。"
).replace(
  /数万歩を歩いているようなだ。/g,
  "数万歩を歩いているような活動だ。"
).replace(
  /最高の無意識だ。/g,
  "最高の無意識の運動だ。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
