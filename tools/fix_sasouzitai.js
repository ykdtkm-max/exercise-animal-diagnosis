const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /友人を誘う自体が/g,
  "友人を誘うこと自体が"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
