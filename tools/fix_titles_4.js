const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "気ままな散歩"/g, '"short_title": "のんびりした散歩"'],
  [/"short_title": "気ままな運動"/g, '"short_title": "目的を定めない運動"'],
  [/"short_title": "気ままな集団活動"/g, '"short_title": "縛りのない集団活動"'],
  [/"short_title": "気ままな集まり"/g, '"short_title": "ルールのない集まり"'],
  [/"short_title": "気ままなサイクリング"/g, '"short_title": "自由なサイクリング"'],
  [/"short_title": "記録をつける筋トレ"/g, '"short_title": "数値を追う筋トレ"'],
  [/"short_title": "記録をつける登山"/g, '"short_title": "成果を測る登山"'],
  [/"short_title": "記録をつけるトレーニング"/g, '"short_title": "数値を管理するトレーニング"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles updated.");
