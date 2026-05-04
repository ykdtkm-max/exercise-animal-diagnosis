const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /動いているが、「続けようとすると続かない」悩みを消す。/g,
  "動いている事実が、「続けようとすると続かない」悩みを消す。"
).replace(
  /変換できるが、爆発的力を引き出す。/g,
  "変換できる環境が、爆発的力を引き出す。"
).replace(
  /遮断できるが、心の波に左右されやすい深いリラックスと安心感をもたらす。/g,
  "遮断できる環境が、心の波に左右されやすい深いリラックスと安心感をもたらす。"
).replace(
  /守り抜けるが、強い満足感をもたらす。/g,
  "守り抜ける環境が、強い満足感をもたらす。"
).replace(
  /追い込まれるが、内なる情熱に火をつける。/g,
  "追い込まれる環境が、内なる情熱に火をつける。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
