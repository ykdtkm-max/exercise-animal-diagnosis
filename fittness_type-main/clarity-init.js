/* ============================================================
 * Microsoft Clarity 初期化 (v2)
 *  - プロジェクト: 運動アニマル図鑑（exercise-v2-diagnosis / fit-animal.com）
 *  - Clarity プロジェクトID: wm1i9gmxcs
 *  - CSP 互換のため inline ではなく外部ファイル化
 *
 *  実装方針（Microsoft 公式ベストプラクティス）:
 *   1. consentv2 を granted デフォルトで呼び、全地域で cookie ベース追跡を有効化
 *      （EEA/UK/CH も対象。Clarity のクロスデバイス・リピーター識別が有効に）
 *   2. localStorage に匿名 visitor uid（タブを越えて永続）
 *   3. sessionStorage にセッション ID（タブ単位、リロードで再発行）
 *   4. window.identifyClarityRoute(pageId) を公開し、SPA ハッシュルート遷移
 *      （applyRoute）から各ルートを別ページとして Clarity に通知
 *      → ヒートマップ・スクロール解析がルートごとに分離して取得可能になる
 * ============================================================ */
(function () {
  // --- 1. Clarity 公式スニペット（IIFE）でキューを設置しタグ JS をロード ---
  (function (c, l, a, r, i, t, y) {
    c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments); };
    t = l.createElement(r); t.async = 1; t.src = 'https://www.clarity.ms/tag/' + i;
    y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
  })(window, document, 'clarity', 'script', 'wm1i9gmxcs');

  // --- 2. 同意 (Consent V2) ---
  // 本サイトは公表方式（外部送信規律）採用。デフォルトで cookie 利用に同意したものとして扱う。
  // 詳細はプライバシーポリシー (/privacy.html) で公表済み。
  try {
    window.clarity('consentv2', {
      ad_Storage: 'granted',
      analytics_Storage: 'granted',
    });
  } catch (_e0) {}

  // --- 3. 匿名ビジターID（リピーター集計用、永続） ---
  var uid = '';
  try {
    var UID_KEY = 'exerciseV2_visitor_uid';
    uid = window.localStorage.getItem(UID_KEY) || '';
    if (!uid) {
      if (window.crypto && typeof window.crypto.randomUUID === 'function') {
        uid = window.crypto.randomUUID();
      } else {
        uid = 'v-' + Date.now().toString(36) + '-' + Math.random().toString(36).slice(2, 10);
      }
      try { window.localStorage.setItem(UID_KEY, uid); } catch (_e1) {}
    }
  } catch (_e2) {}

  // --- 4. セッション ID（タブ単位、リロードで再発行） ---
  var sessionId = '';
  try {
    var SESSION_KEY = 'exerciseV2_clarity_session_id';
    sessionId = window.sessionStorage.getItem(SESSION_KEY) || '';
    if (!sessionId) {
      if (window.crypto && typeof window.crypto.randomUUID === 'function') {
        sessionId = window.crypto.randomUUID();
      } else {
        sessionId = 's-' + Date.now().toString(36) + '-' + Math.random().toString(36).slice(2, 10);
      }
      try { window.sessionStorage.setItem(SESSION_KEY, sessionId); } catch (_e3) {}
    }
  } catch (_e4) {}

  // --- 5. ルート遷移時に Clarity へ identify を再送するグローバル関数 ---
  // 公式ドキュメント (Identify API) が「全ページで identify を呼べ」と推奨。
  // ハッシュルート (#/welcome, #/quiz, #/result/<code> 等) ごとに pageId を変えて呼び出すと、
  // Clarity 上で各ルートが個別の page として集計され、ヒートマップやスクロール解析が
  // ルート単位で分離される。
  window.identifyClarityRoute = function (pageId) {
    try {
      if (typeof window.clarity !== 'function') return;
      // friendly-name はダッシュボード表示用の短い識別子。
      // Clarity サーバー上では元の uid 全体がハッシュ化されて保存される。
      var friendly = uid ? uid.slice(0, 8) : '';
      window.clarity(
        'identify',
        uid || 'anonymous',
        sessionId || '',
        pageId || 'unknown',
        friendly
      );
    } catch (_e) {}
  };

  // --- 6. 初期ロード時の identify ---
  // privacy.html などの静的ページに直接アクセスされたケースを考慮し、
  // pathname を見て初期 pageId を決定する。
  // index.html の場合、続いて app.js の applyRoute() がハッシュに応じた
  // 正しい pageId（welcome / quiz / result-* など）で再呼び出ししてくれる。
  var initialPageId = (function () {
    var path = (window.location && window.location.pathname) || '';
    if (path.indexOf('privacy.html') !== -1 || /\/privacy\/?$/.test(path)) return 'privacy';
    return 'welcome';
  })();
  window.identifyClarityRoute(initialPageId);
})();
