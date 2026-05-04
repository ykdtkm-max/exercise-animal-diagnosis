const fs = require('fs');
const path = require('path');

const appJsPath = path.join(__dirname, 'fittness_type-main', 'app.js');
let content = fs.readFileSync(appJsPath, 'utf8');

const oldFunc = `  function buildSecretCompatCompactSections(secMap, myCode, otherCode) {
    var html = renderSecretCompatAxisCompare(myCode, otherCode);

    // 新しいA案のセクションがあるかチェック
    var hasNewSections = secMap.highlight || secMap.enjoyTips || secMap.caution || secMap.magicWords;

    if (hasNewSections) {
      var highlightPara = joinCompatItemsToPara(secretCompatListItems(secMap, 'highlight', 10, { asIs: true }));
      var enjoyPara = joinCompatItemsToPara(secretCompatListItems(secMap, 'enjoyTips', 10, { asIs: true }));
      var cautionPara = joinCompatItemsToPara(secretCompatListItems(secMap, 'caution', 10, { asIs: true }));
      var magicItems = secretCompatListItems(secMap, 'magicWords', 5, { asIs: true });

      html += renderSecretCompatSec('01', '2人の相性ハイライト',
        highlightPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(highlightPara)) + '</p></div>' : '',
      );
      html += renderSecretCompatSec('02', '一緒に楽しむコツ',
        enjoyPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(enjoyPara)) + '</p></div>' : '',
      );
      html += renderSecretCompatSec('03', 'すれ違い注意報',
        cautionPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(cautionPara)) + '</p></div>' : '',
      );
      
      var magicHtml = '';
      if (magicItems && magicItems.length > 0) {
        magicHtml = '<div style="display: flex; flex-direction: column; gap: 12px;">';
        magicItems.forEach(function(item) {
          var text = item.replace(/^[-*・]\\s*/, '').replace(/^.*?[：:]\\s*/, '');
          magicHtml += '<div class="desc-card" style="margin: 0;"><p>' + escapeHtml(replaceTypeCodes(text)) + '</p></div>';
        });
        magicHtml += '</div>';
      }
      html += renderSecretCompatSec('04', '相手を誘う魔法の言葉', magicHtml);

      return html;
    }`;

const newFunc = `  function joinCompatItemsToMultipleParas(items) {
    if (!items || !items.length) return '';
    return items.map(function (s) {
      s = s.trim();
      if (!s) return '';
      if (!/[。！？]$/.test(s)) s += '。';
      return '<p>' + escapeHtml(replaceTypeCodes(s)) + '</p>';
    }).filter(Boolean).join('');
  }

  function buildSecretCompatCompactSections(secMap, myCode, otherCode) {
    var html = renderSecretCompatAxisCompare(myCode, otherCode);

    // 新しいA案のセクションがあるかチェック
    var hasNewSections = secMap.highlight || secMap.enjoyTips || secMap.caution;

    if (hasNewSections) {
      var highlightHtml = joinCompatItemsToMultipleParas(secretCompatListItems(secMap, 'highlight', 10, { asIs: true }));
      var enjoyHtml = joinCompatItemsToMultipleParas(secretCompatListItems(secMap, 'enjoyTips', 10, { asIs: true }));
      var cautionHtml = joinCompatItemsToMultipleParas(secretCompatListItems(secMap, 'caution', 10, { asIs: true }));

      html += renderSecretCompatSec('01', '2人の相性ハイライト',
        highlightHtml ? '<div class="desc-card">' + highlightHtml + '</div>' : '',
      );
      html += renderSecretCompatSec('02', '一緒に楽しむコツ',
        enjoyHtml ? '<div class="desc-card">' + enjoyHtml + '</div>' : '',
      );
      html += renderSecretCompatSec('03', 'すれ違い注意報',
        cautionHtml ? '<div class="desc-card">' + cautionHtml + '</div>' : '',
      );

      return html;
    }`;

content = content.replace(oldFunc, newFunc);
fs.writeFileSync(appJsPath, content, 'utf8');
console.log('Updated app.js for paragraphs and removed 04');
