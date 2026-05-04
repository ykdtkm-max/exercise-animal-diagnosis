const fs = require('fs');
let content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', 'utf8');

const replacements = [
  // Numbers / Records
  [/"short_title": "数値を追う筋トレ"/g, '"short_title": "回数指定の筋トレ"'],
  [/"short_title": "数値を管理するトレーニング"/g, '"short_title": "孤独なスコア計測"'],
  [/"short_title": "記録管理"/g, '"short_title": "歩数計アプリの使用"'],
  [/"short_title": "成果を測る登山"/g, '"short_title": "自己記録を狙う登山"'],
  [/"short_title": "管理されるプログラム"/g, '"short_title": "感情の伴わない記録"'], // GFVH unsuited
  [/"short_title": "無記録の運動"/g, '"short_title": "成果の見えない運動"'],

  // Solitary
  [/"short_title": "一人での目標達成"/g, '"short_title": "自立を促す目標設定"'],
  [/"short_title": "一人での筋トレ"/g, '"short_title": "孤独なウエイトトレーニング"'],
  [/"short_title": "孤独なジム通い"/g, '"short_title": "一人きりのジム通い"'],
  [/"short_title": "孤独なトレーニング"/g, '"short_title": "一人きりのトレーニング"'],
  [/"short_title": "孤独な習慣"/g, '"short_title": "誰とも関わらない習慣"'],
  [/"short_title": "自己完結のトレーニング"/g, '"short_title": "自分のための目標設定"'],
  [/"short_title": "黙々としたトレーニング"/g, '"short_title": "静寂の中でのトレーニング"'],

  // Strict / Hard
  [/"short_title": "ストイックなレッスン"/g, '"short_title": "私語厳禁のレッスン"'],
  [/"short_title": "ストイックな筋トレ"/g, '"short_title": "自己完結する筋トレ"'],
  [/"short_title": "ハードなエクササイズ"/g, '"short_title": "急激な負荷のエクササイズ"'],
  [/"short_title": "激しいブートキャンプ"/g, '"short_title": "過激なブートキャンプ"'],
  [/"short_title": "激しい筋トレ"/g, '"short_title": "限界まで追い込む筋トレ"'],
  [/"short_title": "熱血ブートキャンプ"/g, '"short_title": "情熱的なブートキャンプ"'],
  [/"short_title": "負荷の高いフィットネス"/g, '"short_title": "スパルタなフィットネス"'],

  // Free / Aimless
  [/"short_title": "のんびりした散歩"/g, '"short_title": "刺激のない散歩"'],
  [/"short_title": "無目的のレクリエーション"/g, '"short_title": "勝敗のないレクリエーション"'],
  [/"short_title": "目的を定めない運動"/g, '"short_title": "ただ楽しむだけの運動"'],
  [/"short_title": "無目的の散歩"/g, '"short_title": "ただ歩くだけの散歩"'],
  [/"short_title": "縛りのない集団活動"/g, '"short_title": "目標のない集団活動"'],
  [/"short_title": "ルールのない集まり"/g, '"short_title": "責任の伴わない集まり"'],
  [/"short_title": "任意参加のプログラム"/g, '"short_title": "出欠自由なプログラム"'],
  [/"short_title": "縛りのないクラス"/g, '"short_title": "成果の見えないクラス"'],
  [/"short_title": "縛りのないジム"/g, '"short_title": "出入り自由なジム"'],

  // Fixed / Routine
  [/"short_title": "いつものスポーツクラブ"/g, '"short_title": "義務で行くスポーツクラブ"'],
  [/"short_title": "変化のないルーティン"/g, '"short_title": "単調なルーティン"'],
  [/"short_title": "定例スイミング"/g, '"short_title": "毎週のスイミング"'],
  [/"short_title": "定例水泳"/g, '"short_title": "マイペースな水泳"'],
  [/"short_title": "定例ヨガ"/g, '"short_title": "お決まりのヨガ"'],
  [/"short_title": "定期的なスポーツクラブ"/g, '"short_title": "顔なじみのスポーツクラブ"'],
  [/"short_title": "固定ルートのジョグ"/g, '"short_title": "同じ景色のジョギング"'],
  [/"short_title": "固定ルートの散歩"/g, '"short_title": "日課のウォーキング"'],
  [/"short_title": "固定ルートの歩行"/g, '"short_title": "予測可能なウォーキング"'],
  [/"short_title": "固定ランニング"/g, '"short_title": "時間と距離を決めたランニング"'],
  [/"short_title": "決まった手順のストレッチ"/g, '"short_title": "毎朝のストレッチ"'],
  [/"short_title": "決まったプログラム"/g, '"short_title": "毎週固定の予定"']
];

replacements.forEach(([regex, replacement]) => {
  content = content.replace(regex, replacement);
});

// SFVH's 管理されるプログラム was replaced by 感情の伴わない記録, but SFVH's body is different.
// Let's fix SFVH specifically.
// SFVH's body: 気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来...
// So SFVH's unsuited title should be "細かなデータ管理"
content = content.replace(
  /"short_title": "感情の伴わない記録",\s*"title": "気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来の熱量が失われる活動",\s*"body": "気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来/g,
  `"short_title": "細かなデータ管理",
        "title": "気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来の熱量が失われる活動",
        "body": "気分で爆発的に動きたいのに、記録や数値で細かく管理されると、義務感が先行して本来`
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/types-data.js', content);
console.log("Titles differentiated.");
