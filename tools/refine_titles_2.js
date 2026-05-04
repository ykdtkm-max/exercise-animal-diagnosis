const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "義務で行くスポーツクラブ"/g, '"short_title": "義務的なスポーツクラブ"'],
  [/"short_title": "成果の見えないクラス"/g, '"short_title": "成果の測れないクラス"'],
  [/"short_title": "成果の見えない運動"/g, '"short_title": "成果の測れない運動"'],
  [/"short_title": "ただ楽しむだけの運動"/g, '"short_title": "娯楽目的の運動"'],
  [/"short_title": "ただ歩くだけの散歩"/g, '"short_title": "あてのない散歩"'],
  [/"short_title": "勝敗のないレクリエーション"/g, '"short_title": "勝敗のない遊び"'],
  [/"short_title": "目標のない集団活動"/g, '"short_title": "目標のない集まり"'],
  [/"short_title": "責任の伴わない集まり"/g, '"short_title": "責任のない集まり"'],
  [/"short_title": "出欠自由なプログラム"/g, '"short_title": "出欠自由なクラス"'],
  [/"short_title": "出入り自由なジム"/g, '"short_title": "出入り自由な施設"'],
  [/"short_title": "縛りのないクラス"/g, '"short_title": "自由なクラス"'],
  [/"short_title": "自由なサイクリング"/g, '"short_title": "目的地の無いサイクリング"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles refined 2.");
