const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

let newContent = content.replace(
  /"short_title": "目標達成型ボディメイク",\s*"title": "大会出場など明確なゴールを設定し、仲間と進捗を共有しながら計画的に体を絞る活動",\s*"body": "明確なゴールを設定し、仲間と進捗を共有しながら計画的に体を絞る。結果を出す力に際立っているため、戦略と競争が両立する環境で圧倒的成果を上げやすい。モチベーションの源泉と深く結びついており、非常に相性が良い。"/g,
  `"short_title": "グループでの短期集中ボディメイク",
        "title": "「2ヶ月でマイナス5kg」など明確なゴールを掲げ、仲間と進捗を共有しながら体を絞る活動",
        "body": "「2ヶ月でマイナス5kg」など明確なゴールを掲げ、仲間と進捗を共有しながら体を絞る。一人で黙々と取り組むより、互いに励まし合い、時には成果を競い合えるような活気あるジム環境を選ぶと、圧倒的な成果を上げやすい。モチベーションの源泉と深く結びついており、非常に相性が良い。"`
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', newContent);
console.log(content !== newContent ? "Updated" : "Not updated");
