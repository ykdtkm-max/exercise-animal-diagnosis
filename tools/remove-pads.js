const fs = require('fs');
const path = './types-data.js';

let content = fs.readFileSync(path, 'utf8');
const match = content.match(/window\.EXERCISE_V2_TYPES\s*=\s*(\{[\s\S]*?\});\n/);
let data = JSON.parse(match[1]);

const padsToRemove = [
  "このタイプ特有の性質に合致し、無理なく継続できる理想的な環境だ。",
  "本来の強みを自然に引き出せるため、このタイプの特性を最も活かせる。",
  "自身の持つエネルギーを最大限に発揮でき、長期的な継続につながりやすい。",
  "このタイプのモチベーションの源泉と深く結びついており、非常に相性が良い。",
  "無理なく楽しみながら続けられるため、心身の充実感を最も得やすい環境だ。",
  "このタイプの持つ本来の強みや特性を活かすことができず、非常に相性が悪い。",
  "モチベーションの源泉と合致しないため、意欲を維持できず挫折しやすい。",
  "このタイプ特有の性質と根本的に合わず、長期的な継続が非常に困難になる。",
  "自身の持つエネルギーをうまく発散できず、かえって心身を消耗させてしまう。",
  "無理に続けようとしてもストレスが溜まるだけであり、避けるべき環境だ。",
  "このタイプの特性に合致する。",
  "本来の強みを自然に引き出せる。",
  "無理なく継続できる理想の環境だ。",
  "このタイプの特性を最も活かせる。",
  "長期的な継続につながりやすい。",
  "特性と合わず、継続が困難になる。",
  "本来の強みが活かせず、消耗する。",
  "意欲を維持できず、挫折しやすい。",
  "このタイプの性質と根本的に合わない。",
  "ストレスが溜まりやすく避けるべきだ。",
  "非常に相性が良い。",
  "理想的な環境だ。",
  "特性を活かせる。",
  "非常に相性が悪い。",
  "継続が困難になる。",
  "避けるべき環境だ。",
  "ぜひ試してみてほしい。",
  "積極的に取り入れたい。",
  "おすすめの選択肢だ。",
  "自信を持っておすすめする。",
  "ぜひ挑戦してみてほしい。",
  "別の方法を探すべきだ。",
  "避けるのが無難だろう。",
  "無理をする必要はない。",
  "別の選択肢を検討したい。",
  "合わない環境と言える。"
];

function removePads(text) {
  let t = text;
  padsToRemove.forEach(pad => {
    t = t.split(pad).join('');
  });
  return t;
}

Object.keys(data).forEach(code => {
  data[code].suit_plans.forEach(p => { p.body = removePads(p.body); });
  data[code].unsuited_plans.forEach(p => { p.body = removePads(p.body); });
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
