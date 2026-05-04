const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

function trimText(text) {
  let t = text;
  
  t = t.replace(/景色を楽しみながら、おしゃべりメインで歩く活動だ。運動の内容よりも「誰と行くか」が全てであり、一緒に楽しい時間を過ごせた体験そのものが、次もまた行こうと思える最強の継続根拠になる。/g, '景色を楽しみながらおしゃべりメインで歩く活動だ。運動内容より「誰と行くか」が全てであり、一緒に楽しい時間を過ごせた体験が、次も行こうと思える最強の継続根拠になる。');
  t = t.replace(/競争や比較は重圧になりやすく、運動の楽しさよりもストレスが勝ってしまう。他者を打ち負かすことや数値の向上に価値を見出せないため、ストイックな競技環境は心の熱量を著しく消耗させる。/g, '競争や比較は重圧になりやすく、運動の楽しさよりストレスが勝る。他者を打ち負かすことや数値の向上に価値を見出せないため、ストイックな競技環境は心の熱量を著しく消耗させる。');

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

console.log('Over 88 after trim6:', over88.length);

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');
