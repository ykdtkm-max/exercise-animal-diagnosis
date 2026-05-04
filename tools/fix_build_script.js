const fs = require('fs');
const path = require('path');

const scriptPath = path.join(__dirname, '..', 'scripts', 'build-secret-compat-detail-data.js');
let content = fs.readFileSync(scriptPath, 'utf8');

const oldClassify = `function classifyHeading(raw) {
  const t = raw.trim();
  if (/軸の一致/.test(t)) return 'axisMatch';
  if (/軸の相違/.test(t)) return 'axisDiff';
  if (/ハミング/.test(t)) return 'hamming';
  if (/D3\\s*相性/.test(t) || /公式コンテンツ/.test(t)) return 'd3Official';
  if (/目的/.test(t) && (/持ち方/.test(t) || /ポイント/.test(t))) return 'purpose';
  if (/誘う|誘い方|声のかけ/.test(t)) return 'invite';
  if (/運動プラン/.test(t) || /\\(\\s*5つ\\s*\\)/.test(t)) return 'plans';
  if (/タイプ差/.test(t) || /ポイントと解説/.test(t) || /から見た/.test(t)) return 'typeInsight';
  if (/衝突しやすい|衝突.*ポイント/.test(t) || (/衝突/.test(t) && /二人/.test(t))) return 'togetherBad';
  if (/楽しめる/.test(t)) return 'togetherGood';
  return null;
}`;

const newClassify = `function classifyHeading(raw) {
  const t = raw.trim();
  if (/軸の一致/.test(t)) return 'axisMatch';
  if (/軸の相違/.test(t)) return 'axisDiff';
  if (/ハミング/.test(t)) return 'hamming';
  if (/D3\\s*相性/.test(t) || /公式コンテンツ/.test(t)) return 'd3Official';
  
  // 新しいA案の見出し
  if (/2人の相性ハイライト/.test(t)) return 'highlight';
  if (/一緒に楽しむコツ/.test(t)) return 'enjoyTips';
  if (/すれ違い注意報/.test(t)) return 'caution';
  if (/相手を誘う魔法の言葉/.test(t)) return 'magicWords';

  // 従来のフォールバック見出し
  if (/目的/.test(t) && (/持ち方/.test(t) || /ポイント/.test(t))) return 'purpose';
  if (/誘う|誘い方|声のかけ/.test(t)) return 'invite';
  if (/運動プラン/.test(t) || /\\(\\s*5つ\\s*\\)/.test(t)) return 'plans';
  if (/タイプ差/.test(t) || /ポイントと解説/.test(t) || /から見た/.test(t)) return 'typeInsight';
  if (/衝突しやすい|衝突.*ポイント/.test(t) || (/衝突/.test(t) && /二人/.test(t))) return 'togetherBad';
  if (/楽しめる/.test(t)) return 'togetherGood';
  return null;
}`;

content = content.replace(oldClassify, newClassify);
fs.writeFileSync(scriptPath, content, 'utf8');
console.log('Updated build script');
