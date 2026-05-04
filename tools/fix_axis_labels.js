const fs = require('fs');
const path = require('path');

const charsDataPath = path.join(__dirname, 'fittness_type-main', 'chars-data.js');
let content = fs.readFileSync(charsDataPath, 'utf8');

const oldAxisInfo = `window.AXIS_INFO = [
  { letter:"S/G", left:{ k:"S", label:"SOLO",       desc:"個人で集中したい" }, right:{ k:"G", label:"GROUP",    desc:"仲間と動きたい" } },
  { letter:"F/P", left:{ k:"F", label:"FREE",        desc:"気分で動く" },       right:{ k:"P", label:"PLAN",     desc:"決めて動く" } },
  { letter:"A/T", left:{ k:"A", label:"ACTION",      desc:"動きながら考える" }, right:{ k:"T", label:"THOUGHT",  desc:"考えてから動く" } },
  { letter:"C/D", left:{ k:"C", label:"CONTINUOUS",  desc:"じっくり続ける" },   right:{ k:"D", label:"DECISIVE", desc:"短期で燃える" } },
];`;

const newAxisInfo = `window.AXIS_INFO = [
  { letter:"S/G", left:{ k:"S", label:"SOLO",       desc:"一人で集中したい" }, right:{ k:"G", label:"GROUP",    desc:"仲間と取り組みたい" } },
  { letter:"F/P", left:{ k:"F", label:"FREE",        desc:"気分に任せる" },       right:{ k:"P", label:"PLAN",     desc:"習慣にしたい" } },
  { letter:"A/T", left:{ k:"A", label:"ACTION",      desc:"やりながら考える" }, right:{ k:"T", label:"THOUGHT",  desc:"考えてからやる" } },
  { letter:"C/D", left:{ k:"C", label:"CONTINUOUS",  desc:"楽しみたい" },   right:{ k:"D", label:"DECISIVE", desc:"追い込みたい" } },
];`;

content = content.replace(oldAxisInfo, newAxisInfo);
fs.writeFileSync(charsDataPath, content, 'utf8');
console.log('Updated chars-data.js with new axis labels');
