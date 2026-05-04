const fs = require('fs');
const content = fs.readFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/app.js', 'utf8');

let newContent = content.replace(
  /'<div class="modal__icon" style="background:var\(--ink\);box-shadow:0 6px 0 0 #1a1327;color:#FFD63F;font-size:26px;">\\ud83d\\udd13<\/div>' \+/,
  `'<div class="modal__icon" style="background:var(--ink);box-shadow:0 6px 0 0 #1a1327;color:#FFD63F;display:flex;align-items:center;justify-content:center;">' +
        '<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 9.9-1"></path></svg>' +
        '</div>' +`
).replace(
  /'<p>\\u5168\\uff11\\uff16\\u30a2\\u30cb\\u30de\\u30eb\\u3068\\u306e\\u76f8\\u6027\\u304c\\u89e3\\u653e\\u3055\\u308c\\u307e\\u3057\\u305f\\u3002<br \/>\\u5404\\u30a2\\u30cb\\u30de\\u30eb\\u3068\\u306e\\u904b\\u52d5\\u30b9\\u30bf\\u30a4\\u30eb\\u306e\\u5408\\u3044\\u65b9\\u30fb\\u3059\\u308c\\u9055\\u3044\\u30dd\\u30a4\\u30f3\\u30c8\\u3092\\u8a73\\u3057\\u304f\\u78ba\\u8a8d\\u3067\\u304d\\u307e\\u3059\\u3002<\/p>' \+/,
  `'<p style="font-weight:600;">全１６アニマルとの相性チェックが解放されました。<br />各アニマルとの運動スタイルのマッチ度・すれ違いポイントを詳しく確認できます。</p>' +`
);

fs.writeFileSync('/Users/takumi.ikeda/運動タイプ診断/fittness_type-main/app.js', newContent);
console.log(content !== newContent ? "Updated modal" : "Not updated modal");
