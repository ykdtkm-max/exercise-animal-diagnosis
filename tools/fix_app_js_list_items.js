const fs = require('fs');
const path = require('path');

const appJsPath = path.join(__dirname, 'fittness_type-main', 'app.js');
let content = fs.readFileSync(appJsPath, 'utf8');

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
      }
      return items.length >= maxItems;
    });
    return items.slice(0, maxItems);
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
    return items.slice(0, maxItems);
  }`;

content = content.replace(oldListItems, newListItems);

fs.writeFileSync(appJsPath, content, 'utf8');
console.log('Updated app.js list items');
