const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /移動する自体/g,
  "移動すること自体"
).replace(
  /いる自体が、は/g,
  "いること自体が、このタイプには"
).replace(
  /考える自体/g,
  "考えること自体"
).replace(
  /盛り上がる自体/g,
  "盛り上がること自体"
).replace(
  /参加する自体/g,
  "参加すること自体"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
