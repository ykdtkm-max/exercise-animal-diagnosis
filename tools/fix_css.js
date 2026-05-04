const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/styles.css', 'utf8');

let newContent = content.replace(
  /#resultSections\.sc-intro-lifted/g,
  "#secretCompatibility.sc-intro-lifted"
).replace(
  /\/\* #resultSections をオーバーレイより上に昇格 \*\//g,
  "/* #secretCompatibility をオーバーレイより上に昇格 */"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/styles.css', newContent);
console.log(content !== newContent ? "Updated css" : "Not updated css");
