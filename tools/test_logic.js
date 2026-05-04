const secMap = {
  "highlight": {
    "headings": [
      "01 2人の相性ハイライト"
    ],
    "blocks": [
      {
        "t": "p",
        "text": "「計画的・安定・高強度」という3つの軸を共有し、公式コンテンツでも相性が良いとされる組み合わせである。違いは「チーム（GPMH）」か「ソロ（SPMH）」かという点のみ。GPMHがチームの勝利に向けて燃えるのに対し、SPMHは自己記録の更新に向けて燃える。外向きと内向きの向上心が美しく交差する関係である。"
      }
    ]
  }
};

function sectionBlocks(secMap, key) {
  var sec = secMap && secMap[key];
  return sec && sec.blocks ? sec.blocks : [];
}

function secretCompatListItems(secMap, key, maxItems, opts) {
  var options = opts || {};
  var items = [];
  sectionBlocks(secMap, key).some(function (b) {
    if (!b || !b.t) return false;
    if (b.t === 'ul' || b.t === 'ol') {
      (b.items || []).some(function (raw) {
        var s = String(raw || '').trim();
        var isNegativeInvite = /^[✗×]/.test(s);
        if (options.positiveOnly && isNegativeInvite) return false;
        if (!options.asIs) s = s; // softenCompatText(s)
        if (!s) return false;
        if (!options.asIs && s.length < 8) return false;
        if (!options.asIs && /^[がはにをもとでやのへよりから]/.test(s)) return false;
        items.push(s);
        return items.length >= maxItems;
      });
    } else if (b.t === 'p') {
      var s = String(b.text || '').trim();
      if (!options.asIs) s = s; // softenCompatText(s)
      if (s) {
        if (options.asIs || (s.length >= 8 && !/^[がはにをもとでやのへよりから]/.test(s))) {
          items.push(s);
        }
      }
    }
    return items.length >= maxItems;
  });
  return items;
}

function joinCompatItemsToPara(items) {
  if (!items || !items.length) return '';
  return items.map(function (s) {
    s = s.trim();
    if (!s) return '';
    if (!/[。！？]$/.test(s)) s += '。';
    return s;
  }).filter(Boolean).join('');
}

console.log(joinCompatItemsToPara(secretCompatListItems(secMap, 'highlight', 10, { asIs: true })));
