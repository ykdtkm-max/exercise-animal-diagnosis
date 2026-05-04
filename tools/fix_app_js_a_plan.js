const fs = require('fs');
const path = require('path');

const appJsPath = path.join(__dirname, 'app.js');
let content = fs.readFileSync(appJsPath, 'utf8');

const oldFunc = `  function buildSecretCompatCompactSections(secMap, myCode, otherCode) {
    var planRecoItems = secretCompatListItems(secMap, 'plans', 3);
    var goodItems = secretCompatListItems(secMap, 'togetherGood', 3);
    var cautionItems = secretCompatListItems(secMap, 'togetherBad', 3);
    var inviteItems = secretCompatListItems(secMap, 'invite', 3, { positiveOnly: true });

    var html = renderSecretCompatAxisCompare(myCode, otherCode);

    var recoPara = joinCompatItemsToPara(planRecoItems);
    if (!recoPara) recoPara = joinCompatItemsToPara(goodItems);
    var cautionPara = joinCompatItemsToPara(cautionItems);
    var actionPara = joinCompatItemsToPara(inviteItems);

    html += renderSecretCompatSec('01', 'おすすめの運動プラン',
      recoPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(recoPara)) + '</p></div>' : '',
    );
    html += renderSecretCompatSec('02', '気をつけたいところ',
      cautionPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(cautionPara)) + '</p></div>' : '',
    );
    html += renderSecretCompatSec('03', '一緒にやるなら',
      actionPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(actionPara)) + '</p></div>' : '',
    );
    return html;
  }`;

const newFunc = `  function buildSecretCompatCompactSections(secMap, myCode, otherCode) {
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
        magicHtml = '<div class="desc-card"><ul style="padding-left: 1.2em; margin: 0; list-style-type: disc;">';
        magicItems.forEach(function(item) {
          magicHtml += '<li style="margin-bottom: 0.5em;">' + escapeHtml(replaceTypeCodes(item)) + '</li>';
        });
        magicHtml += '</ul></div>';
      }
      html += renderSecretCompatSec('04', '相手を誘う魔法の言葉', magicHtml);

      return html;
    }

    // 従来のフォールバック
    var planRecoItems = secretCompatListItems(secMap, 'plans', 3);
    var goodItems = secretCompatListItems(secMap, 'togetherGood', 3);
    var cautionItems = secretCompatListItems(secMap, 'togetherBad', 3);
    var inviteItems = secretCompatListItems(secMap, 'invite', 3, { positiveOnly: true });

    var recoPara = joinCompatItemsToPara(planRecoItems);
    if (!recoPara) recoPara = joinCompatItemsToPara(goodItems);
    var cautionPara = joinCompatItemsToPara(cautionItems);
    var actionPara = joinCompatItemsToPara(inviteItems);

    html += renderSecretCompatSec('01', 'おすすめの運動プラン',
      recoPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(recoPara)) + '</p></div>' : '',
    );
    html += renderSecretCompatSec('02', '気をつけたいところ',
      cautionPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(cautionPara)) + '</p></div>' : '',
    );
    html += renderSecretCompatSec('03', '一緒にやるなら',
      actionPara ? '<div class="desc-card"><p>' + escapeHtml(replaceTypeCodes(actionPara)) + '</p></div>' : '',
    );
    return html;
  }`;

content = content.replace(oldFunc, newFunc);

// secretCompatListItems needs to support asIs to avoid skipping short strings or starting with particles
const oldListItems = `  function secretCompatListItems(secMap, key, maxItems, opts) {
    var options = opts || {};
    var items = [];
    sectionBlocks(secMap, key).some(function (b) {
      if (!b || !b.t) return false;
      if (b.t === 'ul' || b.t === 'ol') {
        (b.items || []).some(function (raw) {
          var s = String(raw || '').trim();
          var isNegativeInvite = /^[✗×]/.test(s);
          if (options.positiveOnly && isNegativeInvite) return false;
          s = softenCompatText(s);
          // 空・短すぎ・主語が削除されて助詞で始まる項目をスキップ
          if (!s || s.length < 8) return false;
          if (/^[がはにをもとでやのへよりから]/.test(s)) return false;
          items.push(s);
          return items.length >= maxItems;
        });
      } else if (b.t === 'p') {
        var s = String(b.text || '').trim();
        s = softenCompatText(s);
        if (s && s.length >= 8 && !/^[がはにをもとでやのへよりから]/.test(s)) {
          items.push(s);
        }
      }
      return items.length >= maxItems;
    });
    return items;
  }`;

const newListItems = `  function secretCompatListItems(secMap, key, maxItems, opts) {
    var options = opts || {};
    var items = [];
    sectionBlocks(secMap, key).some(function (b) {
      if (!b || !b.t) return false;
      if (b.t === 'ul' || b.t === 'ol') {
        (b.items || []).some(function (raw) {
          var s = String(raw || '').trim();
          var isNegativeInvite = /^[✗×]/.test(s);
          if (options.positiveOnly && isNegativeInvite) return false;
          if (!options.asIs) s = softenCompatText(s);
          if (!s) return false;
          if (!options.asIs && s.length < 8) return false;
          if (!options.asIs && /^[がはにをもとでやのへよりから]/.test(s)) return false;
          items.push(s);
          return items.length >= maxItems;
        });
      } else if (b.t === 'p') {
        var s = String(b.text || '').trim();
        if (!options.asIs) s = softenCompatText(s);
        if (s) {
          if (options.asIs || (s.length >= 8 && !/^[がはにをもとでやのへよりから]/.test(s))) {
            items.push(s);
          }
        }
      }
      return items.length >= maxItems;
    });
    return items;
  }`;

content = content.replace(oldListItems, newListItems);

fs.writeFileSync(appJsPath, content, 'utf8');
console.log('Updated app.js');
