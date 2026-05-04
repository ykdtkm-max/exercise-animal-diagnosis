const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

function trimText(text) {
  let t = text;
  
  t = t.replace(/最大の報酬となり/g, '最大の報酬で');
  t = t.replace(/最大の動力になる/g, '最大の動力だ');
  t = t.replace(/最も心地よく長続きする/g, '最も続く');
  t = t.replace(/最大の継続投資になる/g, '最大の投資だ');
  t = t.replace(/最高の着火剤になる/g, '最高の着火剤だ');
  t = t.replace(/そのまま運動に直結する/g, 'そのまま運動になる');
  t = t.replace(/大きなリスクになる/g, '大きなリスクだ');
  t = t.replace(/最高の「無意識の高強度運動」になる/g, '最高の無意識運動だ');
  t = t.replace(/最も純粋な形で体現できるため/g, '純粋に体現でき');
  t = t.replace(/終わった後に充実感を得る/g, '充実感を得る');
  t = t.replace(/本気で取り組む仲間がいる環境が/g, '本気の仲間がいる環境が');
  t = t.replace(/限界まで追い込んでいる熱量に触発され/g, '限界まで追い込む熱量に触発され');
  t = t.replace(/普段以上の力を発揮できる/g, '普段以上の力を出せる');
  t = t.replace(/意欲は内側からではなく/g, '意欲は内からではなく');
  t = t.replace(/外部の熱量に触れたときに点火されるため/g, '外部の熱量で点火されるため');
  t = t.replace(/という強力なエンジンが全く機能しない/g, 'エンジンが機能しない');
  t = t.replace(/というお祭り感が/g, 'お祭り感が');
  t = t.replace(/という極端な熱量の/g, '極端な');
  t = t.replace(/という確かな手応えが/g, '確かな手応えが');
  t = t.replace(/という安心感が/g, '安心感が');
  t = t.replace(/という責任感が/g, '責任感が');
  t = t.replace(/という動機が/g, '動機が');
  t = t.replace(/という感覚が/g, '感覚が');
  t = t.replace(/という体験が/g, '体験が');
  t = t.replace(/という事実が/g, '事実が');
  t = t.replace(/という状況と/g, '状況と');
  t = t.replace(/という文脈が/g, '文脈が');
  t = t.replace(/という行動が/g, '行動が');
  t = t.replace(/という設計が/g, '設計が');
  t = t.replace(/という衝動が/g, '衝動が');
  t = t.replace(/という環境が/g, '環境が');
  
  t = t.replace(/目標タイムから逆算して週ごとの練習メニューを組み、予定通りに消化していく活動だ。計画の精度と実行の強度の両方を高水準で追い求めるため、「計画通りにやり切った」事実が最大の報酬で、次への強い動力になる。/g, '目標から逆算して練習を組み、予定通り消化する活動だ。計画精度と実行強度の両方を高水準で求めるため、「計画通りやり切った」事実が最大の報酬で、次への強い動力になる。');
  t = t.replace(/いつ行ってもいい環境は「行かなくても誰にも迷惑をかけない」ため、運動を始める理由が生まれにくい。義務感が薄い場所では、本来持っている『他者のために動く』エンジンが機能しない。/g, 'いつ行ってもいい環境は「行かなくても迷惑をかけない」ため運動を始める理由が生まれにくい。義務感が薄い場所では、本来の『他者のために動く』エンジンが機能しない。');
  t = t.replace(/運動の派手さよりも、スタッフや常連客との安定した関係性が築ける場所を選ぶスタイルだ。どんな季節でも同じ場所に現れるという、安定した存在感を発揮できるコミュニティを見つけることが、最大の投資だ。/g, '運動の派手さより、スタッフや常連客との安定した関係性が築ける場所を選ぶスタイルだ。どんな季節でも同じ場所に現れる、安定した存在感を発揮できるコミュニティを見つけることが最大の投資だ。');
  t = t.replace(/「とりあえず集まっているだけ」のゆるい雰囲気では、着火するきっかけが見つかりません。チームの雰囲気が落ちていると自分の意欲も連動して落ちてしまうため、熱量のない場に居続けることは大きなリスクだ。/g, '「とりあえず集まるだけ」のゆるい雰囲気では着火するきっかけがない。チームの雰囲気が落ちると自分の意欲も連動して落ちるため、熱量のない場に居続けることは大きなリスクだ。');
  t = t.replace(/音楽と熱気の中で、気づけば一日中飛び跳ねて数万歩を歩いているような活動だ。非日常的な熱量の場に身を置いたとき最大の成果を発揮するため、楽しさが先行するイベントは最高の無意識運動だ。/g, '音楽と熱気の中で、気づけば一日中飛び跳ね数万歩を歩くような活動だ。非日常的な熱量の場で最大の成果を発揮するため、楽しさが先行するイベントは最高の無意識運動だ。');

  t = t.replace(/にならない/g, 'ならず');
  t = t.replace(/になりやすい/g, 'になりがち');
  t = t.replace(/につながる/g, 'を招く');
  t = t.replace(/につながりやすい/g, 'を招きがち');
  t = t.replace(/してしまう/g, 'する');
  t = t.replace(/していく/g, 'する');
  t = t.replace(/している/g, 'する');
  t = t.replace(/されている/g, 'される');
  t = t.replace(/ことができる/g, 'できる');
  t = t.replace(/ことができない/g, 'できない');

  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { p.body = trimText(p.body); });
  data[code].unsuited_plans.forEach(p => { p.body = trimText(p.body); });
});

let over88 = [];
Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { if(p.body.length > 88) over88.push({c:code, t:p.body, len: p.body.length}); });
  data[code].unsuited_plans.forEach(p => { if(p.body.length > 88) over88.push({c:code, t:p.body, len: p.body.length}); });
});

console.log('Over 88 after trim2:', over88.length);
if (over88.length > 0) {
  over88.sort((a,b) => b.len - a.len);
  console.log(over88.slice(0, 10));
}

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');
