/* ============================================================
 * Microsoft Clarity 初期化
 *  - プロジェクト: 運動アニマル図鑑（exercise-v2-diagnosis / fit-animal.com）
 *  - Clarity プロジェクトID: wm1i9gmxcs
 *  - CSP 互換のため inline ではなく外部ファイル化
 *  - 同一ブラウザのリピート訪問識別のため、匿名 visitor uid を発行して identify
 * ============================================================ */
(function () {
  // Clarity 公式スニペット（IIFE）
  (function (c, l, a, r, i, t, y) {
    c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments); };
    t = l.createElement(r); t.async = 1; t.src = 'https://www.clarity.ms/tag/' + i;
    y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
  })(window, document, 'clarity', 'script', 'wm1i9gmxcs');

  // 匿名ビジターID（リピーター集計用）。app.js 側の APP_STORAGE_KEYS にも追加済み
  try {
    var KEY = 'exerciseV2_visitor_uid';
    var uid = null;
    try { uid = window.localStorage.getItem(KEY); } catch (_e1) { uid = null; }
    if (!uid) {
      if (window.crypto && typeof window.crypto.randomUUID === 'function') {
        uid = window.crypto.randomUUID();
      } else {
        uid = 'v-' + Date.now().toString(36) + '-' + Math.random().toString(36).slice(2, 10);
      }
      try { window.localStorage.setItem(KEY, uid); } catch (_e2) {}
    }
    if (typeof window.clarity === 'function') {
      window.clarity('identify', uid);
    }
  } catch (_e) {}
})();
