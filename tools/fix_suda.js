const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /足すだ。/g,
  "足す活動だ。"
).replace(
  /させるがは機能しやすく、/g,
  "させるアプローチが機能しやすく、"
).replace(
  /作り出すできる。/g,
  "作り出すことができる。"
).replace(
  /動かすだ。/g,
  "動かす活動だ。"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
