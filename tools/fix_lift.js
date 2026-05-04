const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/app.js', 'utf8');

let newContent = content.replace(
  /el\.resultSections\.classList\.add\('sc-intro-lifted'\);/g,
  "var scCard = document.getElementById('secretCompatibility');\n      if (scCard) scCard.classList.add('sc-intro-lifted');"
).replace(
  /if \(el\.resultSections\) el\.resultSections\.classList\.remove\('sc-intro-lifted'\);/g,
  "var scCard = document.getElementById('secretCompatibility');\n        if (scCard) scCard.classList.remove('sc-intro-lifted');"
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/app.js', newContent);
console.log(content !== newContent ? "Updated lift" : "Not updated lift");
