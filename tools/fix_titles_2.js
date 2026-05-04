const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  [/"short_title": "管理型筋トレ"/g, '"short_title": "記録をつける筋トレ"'],
  [/"short_title": "ゆるい散歩"/g, '"short_title": "気ままな散歩"'],
  [/"short_title": "ゆるストレッチ"/g, '"short_title": "簡単なストレッチ"'],
  [/"short_title": "競争型スポーツ"/g, '"short_title": "競争のあるスポーツ"'],
  [/"short_title": "管理型プログラム"/g, '"short_title": "管理されるプログラム"'],
  [/"short_title": "記録型登山"/g, '"short_title": "記録をつける登山"'],
  [/"short_title": "ゆるい運動"/g, '"short_title": "気ままな運動"'],
  [/"short_title": "孤独な目標"/g, '"short_title": "一人での目標達成"'],
  [/"short_title": "管理型トレーニング"/g, '"short_title": "記録をつけるトレーニング"'],
  [/"short_title": "黙々系トレーニング"/g, '"short_title": "黙々としたトレーニング"'],
  [/"short_title": "競争型チーム"/g, '"short_title": "競争の激しいチーム"'],
  [/"short_title": "競技型ペアスポーツ"/g, '"short_title": "競技志向のペアスポーツ"'],
  [/"short_title": "チーム型ボディメイク"/g, '"short_title": "仲間とのボディメイク"'],
  [/"short_title": "ゆるい集団活動"/g, '"short_title": "気ままな集団活動"'],
  [/"short_title": "ドロップイン型クラス"/g, '"short_title": "単発参加のクラス"'],
  [/"short_title": "自由参加型ジム"/g, '"short_title": "自由参加のジム"'],
  [/"short_title": "ゆるい集まり"/g, '"short_title": "気ままな集まり"'],
  [/"short_title": "固定ルートジョグ"/g, '"short_title": "固定ルートのジョグ"'],
  [/"short_title": "固定プログラム"/g, '"short_title": "固定されたプログラム"'],
  [/"short_title": "高強度エクササイズ"/g, '"short_title": "高強度のエクササイズ"'],
  [/"short_title": "固定スポーツクラブ"/g, '"short_title": "固定されたスポーツクラブ"'],
  [/"short_title": "固定ルート散歩"/g, '"short_title": "固定ルートの散歩"'],
  [/"short_title": "高強度ブートキャンプ"/g, '"short_title": "高強度のブートキャンプ"'],
  [/"short_title": "特別トレーニング"/g, '"short_title": "特別なトレーニング"'],
  [/"short_title": "本格筋トレ"/g, '"short_title": "本格的な筋トレ"'],
  [/"short_title": "固定ストレッチ"/g, '"short_title": "固定されたストレッチ"'],
  [/"short_title": "固定ルート歩行"/g, '"short_title": "固定ルートの歩行"'],
  [/"short_title": "イベント追い込み"/g, '"short_title": "イベント前の追い込み"'],
  [/"short_title": "雑談トレーニング"/g, '"short_title": "雑談メインのトレーニング"'],
  [/"short_title": "自由参加プログラム"/g, '"short_title": "自由参加のプログラム"'],
  [/"short_title": "一人筋トレ"/g, '"short_title": "一人での筋トレ"'],
  [/"short_title": "匿名クラス"/g, '"short_title": "匿名のクラス"'],
  [/"short_title": "高強度フィットネス"/g, '"short_title": "高強度のフィットネス"'],
  [/"short_title": "定期スポーツクラブ"/g, '"short_title": "定期的なスポーツクラブ"'],
  [/"short_title": "特別プログラム"/g, '"short_title": "特別なプログラム"'],
  [/"short_title": "無目的レクリエーション"/g, '"short_title": "無目的のレクリエーション"'],
  [/"short_title": "自己完結トレーニング"/g, '"short_title": "自己完結のトレーニング"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles updated.");
