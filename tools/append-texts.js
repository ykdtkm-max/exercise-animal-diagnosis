const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

const suitAppends = [
  "ぜひ試してみてほしい。",
  "積極的に取り入れたい。",
  "おすすめの選択肢だ。",
  "自信を持っておすすめする。",
  "ぜひ挑戦してみてほしい。"
];

const unsuitAppends = [
  "別の方法を探すべきだ。",
  "避けるのが無難だろう。",
  "無理をする必要はない。",
  "別の選択肢を検討したい。",
  "合わない環境と言える。"
];

let sIdx = 0;
let uIdx = 0;

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => {
    p.body += suitAppends[sIdx % suitAppends.length];
    sIdx++;
  });
  data[code].unsuited_plans.forEach(p => {
    p.body += unsuitAppends[uIdx % unsuitAppends.length];
    uIdx++;
  });
});

let lens = [];
Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => lens.push(p.body.length));
  data[code].unsuited_plans.forEach(p => lens.push(p.body.length));
});

lens.sort((a, b) => a - b);
console.log('Min:', lens[0]);
console.log('Max:', lens[lens.length - 1]);
console.log('Avg:', lens.reduce((a, b) => a + b, 0) / lens.length);

const newDataString = JSON.stringify(data, null, 2);
const newContent = content.replace(match[0], `window.EXERCISE_V2_TYPES = ${newDataString};\n`);
fs.writeFileSync(path, newContent, 'utf8');

// Update index.html cache buster
let htmlContent = fs.readFileSync('index.html', 'utf8');
htmlContent = htmlContent.replace(/types-data\.js\?v=exercise-v(\d+)/, (match, p1) => {
  return 'types-data.js?v=exercise-v' + (parseInt(p1) + 1);
});
fs.writeFileSync('index.html', htmlContent, 'utf8');

console.log('Appended ~11 chars to all plans');
