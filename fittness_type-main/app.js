(function () {
  'use strict';

  var Q      = function () { return window.EXERCISE_V2_QUESTIONS; };
  var TYPES  = function () { return window.EXERCISE_V2_TYPES; };
  var ORDER  = function () { return window.EXERCISE_V2_TYPE_ORDER; };
  var LABELS = function () { return window.EXERCISE_V2_OPTION_LABELS; };
  var CHARS  = function () { return window.CHAR_DATA || {}; };
  var AXES   = function () { return window.AXIS_INFO || []; };

  var AXIS_KEY  = { 1:'social', 2:'structure', 3:'resilience', 4:'intensity' };
  var PLUS_POLE = { 1:'G', 2:'P', 3:'T', 4:'D' };
  var MINUS_POLE= { 1:'S', 2:'F', 3:'A', 4:'C' };

  // ── ユーティリティ ──────────────────────────────────────────────────────────
  function shuffleArray(arr) {
    for (var i = arr.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));
      var tmp = arr[i]; arr[i] = arr[j]; arr[j] = tmp;
    }
    return arr;
  }

  function escapeHtml(s) {
    var d = document.createElement('div');
    d.textContent = String(s || '');
    return d.innerHTML;
  }

  function escapeAttr(s) {
    return escapeHtml(s).replace(/`/g, '&#96;');
  }

  function safeAssetUrl(src) {
    var s = String(src || '').trim();
    if (!s) return '';
    if (/^(?:chars|character)\/[^"'<>\\]+\.(?:svg|png|webp|jpg|jpeg|gif)$/i.test(s)) return s;
    if (/^(?:logo|favicon|OGP)\.png$/i.test(s)) return s;
    if (/^https:\/\/[A-Za-z0-9.-]+(?:\/[A-Za-z0-9._~:/?#[\]@!$&'()*+,;=%-]*)?$/i.test(s)) return s;
    return '';
  }

  function safeCssColor(value, fallback) {
    var color = String(value || '').trim();
    if (/^#[0-9A-Fa-f]{3}(?:[0-9A-Fa-f]{3})?$/.test(color)) return color;
    return fallback || '#FFE9C2';
  }

  function parseHexRgb6(hex) {
    var raw = String(hex || '').trim().replace(/^#/, '');
    if (/^[0-9A-Fa-f]{3}$/.test(raw)) {
      raw = raw.split('').map(function (ch) { return ch + ch; }).join('');
    }
    if (!/^[0-9A-Fa-f]{6}$/.test(raw)) return null;
    return {
      r: parseInt(raw.slice(0, 2), 16),
      g: parseInt(raw.slice(2, 4), 16),
      b: parseInt(raw.slice(4, 6), 16),
    };
  }

  function rgbToHex(rr, gg, bb) {
    function b(x) {
      var n = Math.max(0, Math.min(255, Math.round(x)));
      var h = n.toString(16);
      return h.length === 1 ? '0' + h : h;
    }
    return '#' + b(rr) + b(gg) + b(bb);
  }

  function rgbToHsl(r, g, b) {
    r /= 255;
    g /= 255;
    b /= 255;
    var max = Math.max(r, g, b);
    var min = Math.min(r, g, b);
    var h = 0;
    var s = 0;
    var l = (max + min) / 2;
    var d = max - min;
    if (d > 1e-6) {
      s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
      switch (max) {
        case r:
          h = ((g - b) / d + (g < b ? 6 : 0)) / 6;
          break;
        case g:
          h = ((b - r) / d + 2) / 6;
          break;
        default:
          h = ((r - g) / d + 4) / 6;
          break;
      }
    }
    return { h: h, s: s, l: l };
  }

  function hslToRgb(h, s, l) {
    if (s < 1e-6) {
      var x = Math.max(0, Math.min(1, l)) * 255;
      return { r: x, g: x, b: x };
    }
    var q = l < 0.5 ? l * (1 + s) : l + s - l * s;
    var p = 2 * l - q;
    function hue(t) {
      if (t < 0) t += 1;
      if (t > 1) t -= 1;
      if (t < 1 / 6) return p + (q - p) * 6 * t;
      if (t < 1 / 2) return q;
      if (t < 2 / 3) return p + (q - p) * (2 / 3 - t) * 6;
      return p;
    }
    return {
      r: hue(h + 1 / 3) * 255,
      g: hue(h) * 255,
      b: hue(h - 1 / 3) * 255,
    };
  }

  /** キャラ tint（薄い色）から、選択中タイプコード用の濃い色へ */
  function tintToPickerActiveCodeHex(tint) {
    var safe = parseHexRgb6(safeCssColor(tint, '#FFE9C2'));
    if (!safe) return '#2b2535';
    var hsl = rgbToHsl(safe.r, safe.g, safe.b);
    if (hsl.s < 0.07) {
      var y = hsl.l;
      var L = y > 0.88 ? 0.34 : Math.max(0.22, Math.min(0.4, y * 0.35));
      var v = Math.round(L * 255);
      return rgbToHex(v, v, v);
    }
    var newS = Math.min(0.9, hsl.s * 1.22 + 0.2);
    var newL = Math.max(0.2, Math.min(0.38, 0.74 - hsl.l * 0.48));
    var out = hslToRgb(hsl.h, newS, newL);
    return rgbToHex(out.r, out.g, out.b);
  }

  function charImgHtml(code, alt) {
    var c = CHARS()[code];
    if (!c) return '';
    var src = safeAssetUrl(c.img);
    if (!src) return '';
    return '<img src="' + escapeAttr(src) + '" alt="' + escapeAttr(alt || c.animal) + '" loading="lazy">';
  }

  function charImgFullHtml(code, alt) {
    var c = CHARS()[code];
    if (!c) return '';
    var src = safeAssetUrl(c.imgFull || c.img);
    if (!src) return '';
    return '<img src="' + escapeAttr(src) + '" alt="' + escapeAttr(alt || c.animal) + '" loading="lazy">';
  }

  // ── スコア計算 ──────────────────────────────────────────────────────────────
  var SCORE_BY_OPTION_INDEX = [3, 2, 1, -1, -2, -3];
  var ZERO_TIE_WEIGHT_BY_ABS_SCORE = { 1: 1, 2: 1.2, 3: 1.5 };

  function optionIndexToScore(i) { return SCORE_BY_OPTION_INDEX[i]; }

  function contribution(q, responseScore) {
    var plus = PLUS_POLE[q.axis];
    return q.polarity === plus ? responseScore : -responseScore;
  }

  function computeAxisData(questions, answers) {
    var sums     = { social:0, structure:0, resilience:0, intensity:0 };
    var posCount = { social:0, structure:0, resilience:0, intensity:0 };
    var negCount = { social:0, structure:0, resilience:0, intensity:0 };
    var posWeight = { social:0, structure:0, resilience:0, intensity:0 };
    var negWeight = { social:0, structure:0, resilience:0, intensity:0 };
    questions.forEach(function (q, idx) {
      var sc = answers[idx];
      if (sc === undefined || sc === null) return;
      var k = AXIS_KEY[q.axis];
      var c = contribution(q, sc);
      sums[k] += c;
      if (c > 0) {
        posCount[k]++;
        posWeight[k] += Math.abs(c) * ZERO_TIE_WEIGHT_BY_ABS_SCORE[Math.abs(c)];
      } else if (c < 0) {
        negCount[k]++;
        negWeight[k] += Math.abs(c) * ZERO_TIE_WEIGHT_BY_ABS_SCORE[Math.abs(c)];
      }
    });
    Object.keys(sums).forEach(function (k) {
      if (sums[k] !== 0) return;
      if (posCount[k] > negCount[k]) {
        sums[k] = 1;
      } else if (posCount[k] < negCount[k]) {
        sums[k] = -1;
      } else if (posWeight[k] > negWeight[k]) {
        sums[k] = 1;
      } else if (posWeight[k] < negWeight[k]) {
        sums[k] = -1;
      }
    });
    return { sums: sums, posCount: posCount, negCount: negCount };
  }

  function resolveLetter(axisNum, data) {
    var k = AXIS_KEY[axisNum];
    var sum = data.sums[k];
    var plus = PLUS_POLE[axisNum];
    if (sum > 0) return plus;
    if (sum < 0) return MINUS_POLE[axisNum];
    if (data.posCount[k] > data.negCount[k]) return plus;
    if (data.posCount[k] < data.negCount[k]) return MINUS_POLE[axisNum];
    return plus;
  }

  function resolveTypeCode(answers) {
    var questions = SQ();
    var data = computeAxisData(questions, answers);
    return resolveLetter(1,data) + resolveLetter(2,data) + resolveLetter(3,data) + resolveLetter(4,data);
  }

  /** 各軸8問×応答±3 ⇒ 最大|sum|=24 を UI 用 −100〜+100 に線形換算（5点刻みで切り上げ） */
  function normalizeAxis(n) {
    if (!n) return 0;
    var sign = n > 0 ? 1 : -1;
    var rounded = Math.ceil((Math.abs(n) / 24) * 100 / 5) * 5;
    return sign * Math.max(5, Math.min(100, rounded));
  }

  // ── 診断結果の保存（sessionStorage／同一タブ内でリロード・図鑑往復でも4軸を復元） ──
  var STORAGE_KEY_SAVED_DIAG = 'exerciseV2_diag_saved';
  /** 図鑑を開いた直前の画面: 'welcome' | 'result'（リロード後も ← 先を復元する） */
  var STORAGE_KEY_TYPES_RETURN = 'exerciseV2_types_return';
  /** 図鑑でタップ済みタイプのフル表示解禁。診断やり直し後も維持するため localStorage（明示リセットで消す） */
  var STORAGE_KEY_UNLOCKED_TYPES = 'exerciseV2_unlocked_types';
  var didHydrateFromStorage = false;

  function isValidStoredSums(sums) {
    if (!sums || typeof sums !== 'object') return false;
    var keys = ['social', 'structure', 'resilience', 'intensity'];
    for (var i = 0; i < keys.length; i++) {
      var x = sums[keys[i]];
      if (typeof x !== 'number' || Number.isNaN(x)) return false;
    }
    return true;
  }

  function persistSavedResult() {
    if (!state.lastCode || !state.lastScores || !isValidStoredSums(state.lastScores)) return;
    if (!TYPES()[state.lastCode]) return;
    storageSet('session', STORAGE_KEY_SAVED_DIAG, JSON.stringify({
      v: 1,
      code: state.lastCode,
      sums: {
        social: state.lastScores.social,
        structure: state.lastScores.structure,
        resilience: state.lastScores.resilience,
        intensity: state.lastScores.intensity,
      },
    }));
  }

  function clearSavedResultStorage() {
    storageRemove('session', STORAGE_KEY_SAVED_DIAG);
    storageRemove('session', STORAGE_KEY_TYPES_RETURN);
    state.typesReturnParent = 'welcome';
  }

  function unlockTypesPayloadToMap(list) {
    if (!Array.isArray(list)) return {};
    return list.reduce(function (acc, code) {
      if (typeof code === 'string' && TYPES()[code]) acc[code] = true;
      return acc;
    }, {});
  }

  function loadUnlockedTypes() {
    var raw = storageGet('local', STORAGE_KEY_UNLOCKED_TYPES);
    if (!raw) {
      raw = storageGet('session', STORAGE_KEY_UNLOCKED_TYPES);
      if (raw) {
        if (storageSet('local', STORAGE_KEY_UNLOCKED_TYPES, raw)) {
          storageRemove('session', STORAGE_KEY_UNLOCKED_TYPES);
        }
      }
    }
    var list = parseStoredJson(raw, []);
    if (!Array.isArray(list)) return {};
    return unlockTypesPayloadToMap(list);
  }

  function persistUnlockedTypes() {
    if (storageSet('local', STORAGE_KEY_UNLOCKED_TYPES, JSON.stringify(Object.keys(state.unlockedTypes || {})))) {
      storageRemove('session', STORAGE_KEY_UNLOCKED_TYPES);
    }
  }

  function unlockType(code) {
    if (!code || !TYPES()[code]) return;
    if (state.unlockedTypes[code]) return;
    state.unlockedTypes[code] = true;
    persistUnlockedTypes();
  }

  function isTypeUnlocked(code) {
    return !!(state.unlockedTypes && state.unlockedTypes[code]);
  }

  function loadPersistedSaved() {
    var raw = storageGet('session', STORAGE_KEY_SAVED_DIAG);
    if (!raw) return null;
    var o = parseStoredJson(raw, null);
    if (!o || o.v !== 1 || !o.code || !isValidStoredSums(o.sums)) return null;
    if (!TYPES()[o.code]) return null;
    return o;
  }

  function hydratePersistedIntoStateOnce() {
    if (didHydrateFromStorage) return;
    didHydrateFromStorage = true;
    var o = loadPersistedSaved();
    if (!o) return;
    state.lastCode = o.code;
    state.lastScores = o.sums;
  }

  function persistTypesReturnParent() {
    storageSet('session', STORAGE_KEY_TYPES_RETURN, state.typesReturnParent);
  }

  function hydrateTypesReturnParentFromStorage() {
    var v = storageGet('session', STORAGE_KEY_TYPES_RETURN);
    if (v === 'result' || v === 'welcome') {
      state.typesReturnParent = v;
    } else {
      state.typesReturnParent = 'welcome';
    }
  }

  // ── クイズ途中の保存（sessionStorage／リロードで回答・質問並び・位置を復元） ──
  var STORAGE_KEY_QUIZ_PROGRESS = 'exerciseV2_quiz_progress';
  /** SNSシェア進行（順位ロック／4文案）は診断結果と独立。同一オリジン内ではタブを閉じても維持するため localStorage に保存する */
  var STORAGE_KEY_SHARE_PROGRESS = 'exerciseV2_share_progress';
  /** 旧実装の互換キー。読み込み時に新形式へ移行し、リセット時も削除する。 */
  var STORAGE_KEY_SHARE_CHANNELS_LEGACY = 'exerciseV2_share_channels';
  var STORAGE_KEY_SCROLL_POSITIONS = 'exerciseV2_scroll_positions';

  var APP_STORAGE_KEYS = [
    STORAGE_KEY_SAVED_DIAG,
    STORAGE_KEY_TYPES_RETURN,
    STORAGE_KEY_UNLOCKED_TYPES,
    STORAGE_KEY_QUIZ_PROGRESS,
    STORAGE_KEY_SHARE_PROGRESS,
    STORAGE_KEY_SHARE_CHANNELS_LEGACY,
    STORAGE_KEY_SCROLL_POSITIONS,
  ];

  function getStorageArea(kind) {
    return kind === 'local' ? window.localStorage : window.sessionStorage;
  }

  function storageGet(kind, key) {
    try {
      return getStorageArea(kind).getItem(key);
    } catch (_e) {
      return null;
    }
  }

  function storageSet(kind, key, value) {
    try {
      getStorageArea(kind).setItem(key, value);
      return true;
    } catch (_e) {
      return false;
    }
  }

  function storageRemove(kind, key) {
    try {
      getStorageArea(kind).removeItem(key);
      return true;
    } catch (_e) {
      return false;
    }
  }

  function parseStoredJson(raw, fallback) {
    if (!raw) return fallback;
    try {
      return JSON.parse(raw);
    } catch (_e) {
      return fallback;
    }
  }

  /** optionIndexToScore と同様の離散値のみ許可／未選択は null */
  function isValidStoredAnswerScore(sc) {
    if (sc === null) return true;
    if (typeof sc !== 'number' || Number.isNaN(sc) || Math.floor(sc) !== sc) return false;
    return sc >= -3 && sc <= 3 && sc !== 0;
  }

  function clearQuizProgressStorage() {
    storageRemove('session', STORAGE_KEY_QUIZ_PROGRESS);
  }

  function resetQuizMemoryState() {
    state.shuffledQuestions = [];
    state.answers = [];
    state.quizIndex = 0;
    state.maxReachedIndex = 0;
    state.animFwd = true;
  }

  function persistQuizProgress() {
    var baseLen = Q().length;
    if (baseLen === 0 || state.shuffledQuestions.length !== baseLen) return;
    if (state.answers.length !== baseLen) return;
    var order = state.shuffledQuestions.map(function (q) {
      return q.orderIndex;
    });
    storageSet('session', STORAGE_KEY_QUIZ_PROGRESS, JSON.stringify({
      v: 1,
      n: baseLen,
      order: order,
      answers: state.answers,
      quizIndex: state.quizIndex,
      maxReachedIndex: state.maxReachedIndex,
    }));
  }

  function hydrateQuizProgressFromStorage() {
    try {
      var raw = storageGet('session', STORAGE_KEY_QUIZ_PROGRESS);
      if (!raw) return false;
      var o = parseStoredJson(raw, null);
      var baseLen = Q().length;
      if (!o || o.v !== 1 || o.n !== baseLen || !Array.isArray(o.order) || o.order.length !== baseLen || !Array.isArray(o.answers) || o.answers.length !== baseLen)
        throw new Error('invalid');
      var base = Q();
      var canon = {};
      base.forEach(function (q, idx) {
        canon[q.orderIndex] = true;
      });
      var used = {};
      var shuffled = [];
      var i;
      for (i = 0; i < o.order.length; i++) {
        var oix = o.order[i];
        if (typeof oix !== 'number' || oix !== oix || !canon[oix] || used['x' + oix]) throw new Error('perm');
        used['x' + oix] = true;
        var qObj = null;
        for (var j = 0; j < base.length; j++) {
          if (base[j].orderIndex === oix) {
            qObj = base[j];
            break;
          }
        }
        if (!qObj) throw new Error('q');
        shuffled.push(qObj);
      }
      Object.keys(canon).forEach(function (k) {
        if (!used['x' + k]) throw new Error('coverage');
      });
      var answers = [];
      for (i = 0; i < o.answers.length; i++) {
        if (!isValidStoredAnswerScore(o.answers[i])) throw new Error('ans');
        answers.push(o.answers[i]);
      }
      var quizIx = typeof o.quizIndex === 'number' && !Number.isNaN(o.quizIndex) ? Math.round(o.quizIndex) : 0;
      var mx =
        typeof o.maxReachedIndex === 'number' && !Number.isNaN(o.maxReachedIndex)
          ? Math.round(o.maxReachedIndex)
          : 0;
      quizIx = Math.max(0, Math.min(baseLen - 1, quizIx));
      mx = Math.max(0, Math.min(baseLen, mx));
      state.shuffledQuestions = shuffled;
      state.answers = answers;
      state.quizIndex = quizIx;
      state.maxReachedIndex = mx;
      return true;
    } catch (_e) {
      clearQuizProgressStorage();
      resetQuizMemoryState();
      return false;
    }
  }

  /**
   * URLに `?resetSession=1` があるとき: 同一オリジン内のアプリ状態を初期化してウェルカムへ。
   * 削除するキー（APP_STORAGE_KEYS を sessionStorage と localStorage の両方から removeItem）:
   * - exerciseV2_diag_saved（直近保存診断）
   * - exerciseV2_types_return（図鑑の戻り先）
   * - exerciseV2_unlocked_types（図鑑フル表示解禁）
   * - exerciseV2_quiz_progress（進行中クイズ）
   * - exerciseV2_share_progress（SNSシェア進行・文言ロック）
   * - exerciseV2_share_channels（旧シェア配列キー・互換）
   */
  function consumeSessionResetIfRequested() {
    try {
      var qs = window.location.search || '';
      var want = /(?:^|[?&])resetSession=1(?:&|$)/.test(qs);
      if (!want) return { didReset:false };

      var ri;
      for (ri = 0; ri < APP_STORAGE_KEYS.length; ri++) {
        storageRemove('session', APP_STORAGE_KEYS[ri]);
        storageRemove('local', APP_STORAGE_KEYS[ri]);
      }

      var next = '';
      try {
        var u = new URL(window.location.href);
        u.searchParams.delete('resetSession');
        /** hash は捨ててトップへ（ルーティングの初期状態に揃える） */
        u.hash = '#/';
        next = u.toString();
      } catch (_eUrl) {
        var base = window.location.pathname + (qs
          .replace(/([?&])resetSession=1(&)?/g, function (_m, a, amp) { return amp ? a : (a === '?' ? '' : a); })
          .replace(/\?&/, '?')
          .replace(/[?&]$/, ''));
        next = base + '#/';
      }

      window.location.replace(next);
      return { didReset:true };
    } catch (_e) {
      return { didReset:false };
    }
  }

  var resetInfo = consumeSessionResetIfRequested();
  if (resetInfo && resetInfo.didReset) return;

  // ── アプリ状態 ───────────────────────────────────────────────────────────────
  var state = {
    screen: 'welcome',
    quizIndex: 0,
    answers: [],
    shuffledQuestions: [],
    lastScores: null,
    lastCode: null,
    animFwd: true,
    maxReachedIndex: 0,
    unlockedTypes: {},
    /** タイプ一覧を開いた直前の画面: 'welcome' | 'result'（図鑑の「戻る」／ブラウザ戻りと対応） */
    typesReturnParent: 'welcome',
  };
  state.unlockedTypes = loadUnlockedTypes();

  function SQ() {
    return state.shuffledQuestions.length ? state.shuffledQuestions : Q();
  }

  var el = {
    screens: {
      welcome: document.getElementById('screenWelcome'),
      types:   document.getElementById('screenTypes'),
      quiz:    document.getElementById('screenQuiz'),
      result:  document.getElementById('screenResult'),
      secretCompat: document.getElementById('screenSecretCompat'),
    },
    typesGrid:         document.getElementById('typesGrid'),
    qText:             document.getElementById('qText'),
    qOptions:          document.getElementById('qOptions'),
    qContent:          document.getElementById('qContent'),
    qBackBottom:       document.getElementById('qBackBottom'),
    qNext:             document.getElementById('qNext'),
    qCenterWrap:       document.getElementById('qCenterWrap'),
    cardFill:          document.getElementById('cardProgressFill'),
    resultSections:    document.getElementById('resultSections'),
    secretCompatPageBody: document.getElementById('secretCompatPageBody'),
    typeModal:         document.getElementById('typeModal'),
    typeModalBody:     document.getElementById('typeModalBody'),
    typeModalScroll:   document.getElementById('typeModalScroll'),
    typeModalSheet:    document.getElementById('typeModalSheet'),
    typeModalBackdrop: document.getElementById('typeModalBackdrop'),
    quitDialog:        document.getElementById('quitDialog'),
    diagnoseDialog:    document.getElementById('diagnoseDialog'),
    resultDiscardDialog: document.getElementById('resultDiscardDialog'),
  };

  try {
    if ('scrollRestoration' in window.history) window.history.scrollRestoration = 'manual';
  } catch (_eScrollRestoration) {}

  // ── 画面ルーティング ─────────────────────────────────────────────────────────
  function getRouteScrollKey() {
    return (window.location.pathname || '/') + (window.location.hash || '#/');
  }

  function loadScrollPositions() {
    var o = parseStoredJson(storageGet('session', STORAGE_KEY_SCROLL_POSITIONS), {});
    return o && typeof o === 'object' ? o : {};
  }

  function saveCurrentScrollPosition() {
    var y = Math.max(0, Math.round(window.scrollY || window.pageYOffset || 0));
    var positions = loadScrollPositions();
    positions[getRouteScrollKey()] = y;
    storageSet('session', STORAGE_KEY_SCROLL_POSITIONS, JSON.stringify(positions));
  }

  function getSavedScrollPosition() {
    var positions = loadScrollPositions();
    var y = positions[getRouteScrollKey()];
    if (typeof y !== 'number' || Number.isNaN(y)) return null;
    return Math.max(0, Math.round(y));
  }

  function showScreen(name, opts) {
    state.screen = name;
    var isBooting = document.body.classList.contains('app-booting');
    Object.keys(el.screens).forEach(function (k) {
      el.screens[k].classList.toggle('screen--active', k === name);
    });
    if (isBooting) {
      var savedY = getSavedScrollPosition();
      if (savedY != null) window.scrollTo(0, savedY);
      document.body.classList.remove('app-booting');
      if (savedY != null) {
        requestAnimationFrame(function () {
          window.scrollTo(0, savedY);
        });
      }
      return;
    }
    if (!opts || !opts.preserveScroll) window.scrollTo(0, 0);
  }

  function setHash(path) {
    if (path === '/' || path === '') window.location.hash = '#/';
    else window.location.hash = '#/' + path.replace(/^\//, '');
  }

  function parseHash() {
    var raw = (window.location.hash || '#/').replace(/^#\/?/, '');
    var parts = raw.split('/').filter(Boolean);
    if (parts.length === 0) return { view:'welcome' };
    if (parts[0] === 'types' && parts[1]) return { view:'typeDetail', code:parts[1].toUpperCase() };
    if (parts[0] === 'types')  return { view:'types' };
    if (parts[0] === 'quiz')   return { view:'quiz' };
    if (parts[0] === 'secret-compat' && parts[1]) return { view:'secretCompat', code:parts[1].toUpperCase() };
    if (parts[0] === 'result' && parts[1]) return { view:'result', code:parts[1].toUpperCase() };
    if (parts[0] === 'result') return { view:'result', code:state.lastCode };
    return { view:'welcome' };
  }

  // ── タイプ一覧グリッド ──────────────────────────────────────────────────────
  var CARD_TAGLINES = {
    SFAC: '義務なく、気ままに動く。',
    SFAD: '衝動で、一人全力。',
    SFTD: 'スイッチで深く追う。',
    SPAC: '気づけば続いている。',
    SPAD: '昨日の数字を更新。',
    SPTC: '完璧な日が報酬。',
    SPTD: '緻密に計画し追う。',
    GFAC: '誰かと自然に動く。',
    GFAD: '熱い体験が燃料。',
    GFTC: '人の存在が理由。',
    GFTD: '誰かの本気で燃える。',
    GPAD: '目標と計画で勝つ。',
    GPTC: '仲間のために続く。',
    GPTD: 'チーム本気で燃える。',
  };

  function renderTypesGrid() {
    var frag = document.createDocumentFragment();
    ORDER().forEach(function (code) {
      var t = TYPES()[code];
      var c = CHARS()[code];
      if (!t) return;

      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'tcard';
      btn.setAttribute('aria-label', code + ' ' + t.type_name);

      var tint = safeCssColor(c && c.tint, '#FFE9C2');
      var img  = c ? (isTypeUnlocked(code) ? charImgFullHtml(code) : charImgHtml(code)) : '';
      var cardTagline = CARD_TAGLINES[code] || t.tagline || '';

      btn.innerHTML =
        '<span class="tcard__code">' + escapeHtml(code) + '</span>' +
        '<div class="tcard__visual" style="background:' + tint + '">' + img + '</div>' +
        '<div class="tcard__title">' + escapeHtml(cardTagline) + '</div>' +
        '<div class="tcard__name">' + escapeHtml(t.type_name) + '</div>';

      btn.addEventListener('click', function () {
        setHash('/types/' + code);
        applyRoute();
        setTimeout(function () {
          unlockType(code);
          refreshCatalogPreviews();
        }, 1000);
      });
      frag.appendChild(btn);
    });
    el.typesGrid.innerHTML = '';
    el.typesGrid.appendChild(frag);
  }

  // ── タイプ詳細シート ─────────────────────────────────────────────────────────
  var sheetScrollY = 0;
  var isSheetScrollLocked = false;

  function lockPageScroll() {
    if (isSheetScrollLocked) return;
    isSheetScrollLocked = true;
    sheetScrollY = window.scrollY || window.pageYOffset || 0;
    document.body.style.position = 'fixed';
    document.body.style.top = '-' + sheetScrollY + 'px';
    document.body.style.left = '0';
    document.body.style.right = '0';
    document.body.style.width = '100%';
  }

  function unlockPageScroll() {
    if (!isSheetScrollLocked) return;
    isSheetScrollLocked = false;
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.right = '';
    document.body.style.width = '';
    window.scrollTo(0, sheetScrollY);
  }

  function openSheet() {
    lockPageScroll();
    el.typeModalSheet.style.willChange = 'transform';
    el.typeModal.hidden = false;
    requestAnimationFrame(function () {
      requestAnimationFrame(function () { el.typeModal.classList.add('is-open'); });
    });
  }

  function closeSheet() {
    el.typeModal.classList.remove('is-open');
    var done = false;
    var finish = function () {
      if (done) return;
      done = true;
      el.typeModalSheet.style.willChange = '';
      el.typeModal.hidden = true;
      unlockPageScroll();
      setHash('/types');
    };
    el.typeModalSheet.addEventListener('transitionend', finish, { once:true });
    setTimeout(finish, 400);
  }

  function renderTypeModal(code) {
    var t = TYPES()[code];
    if (!t) return;
    el.typeModalBody.innerHTML = buildTypeDetailHtml(t, code);
    el.typeModalScroll.scrollTop = 0;
    openSheet();
  }

  // タイプコード（SFAC等）を動物名に置換
  function replaceTypeCodes(text) {
    return text.replace(/\b[SGFPATCD]{4}\b/g, function (code) {
      var c = CHARS()[code];
      return c ? c.animal : code;
    });
  }

  // ── 相性カード ───────────────────────────────────────────────────────────────
  function compatCard(c, badgeClass, badgeLabel) {
    var ch = CHARS()[c.code];
      var tint = safeCssColor(ch && ch.tint, '#FFE9C2');
    var animal = ch ? ch.animal : c.code;
    return (
      '<div class="compat-card">' +
        '<div class="compat-card__side">' +
          '<span class="pill ' + badgeClass + '">' + escapeHtml(badgeLabel) + '</span>' +
          '<div class="compat-card__char" style="background:' + tint + '">' +
            charImgFullHtml(c.code) +
          '</div>' +
        '</div>' +
        '<div class="compat-card__body">' +
          '<div class="compat-card__name">' + escapeHtml(c.name) + '（' + escapeHtml(animal) + '）</div>' +
          '<div class="compat-card__msg">' + escapeHtml(replaceTypeCodes(c.reason)) + '</div>' +
        '</div>' +
      '</div>'
    );
  }

  function buildCompatSection(compat) {
    var goodItems = (compat && compat.good) || [];
    var badItems  = (compat && compat.bad)  || [];
    var inner = '';
    if (goodItems.length) inner += compatCard(goodItems[0], 'pill--good', '相性◎');
    if (badItems.length)  inner += compatCard(badItems[0],  'pill--care', '要注意');
    if (!inner) inner = '<p style="font-size:13px;color:var(--ink-mute);">相性データがありません。</p>';
    return (
      '<div class="sec">' +
        '<div class="sec__head">' +
          '<span class="num">05</span>' +
          '<h3>アニマル相性</h3>' +
          '<span class="deco"></span>' +
        '</div>' +
        '<div class="compat">' + inner + '</div>' +
      '</div>'
    );
  }

  // ── 軸バー HTML ──────────────────────────────────────────────────────────────
  /** 診断未完了などでタイプのみ表示するときの見本用ダミースコア（実データではない・見た目のサンプルのみ） */
  var SAMPLE_AXIS_SUMS_FOR_UI = {
    social: 12,
    structure: -11,
    resilience: 14,
    intensity: -9,
  };

  function buildAxisBarsRowsHtml(sums) {
    var axes = AXES();
    var keys = ['social', 'structure', 'resilience', 'intensity'];
    var html = '';
    keys.forEach(function (key, idx) {
      var axisInfo = axes[idx] || {};
      var left  = axisInfo.left  || {};
      var right = axisInfo.right || {};
      var n    = sums[key];
      var norm = normalizeAxis(n);
      // バー親要素幅を100%。中央〜左右端までの距離が各50%、最大振れ norm=±100 は width 50% で端まで。|norm| に比例した長さは pct=|norm|/2 (%)。
      var pct = Math.abs(norm) / 2;
      var neutral = norm === 0;
      var isPlus  = norm > 0;

      var leftOn  = !neutral && !isPlus ? ' is-on' : '';
      var rightOn = !neutral && isPlus ? ' is-on' : '';
      var fillStyle = neutral
        ? 'left:50%;width:0%;'
        : isPlus
          ? 'left:50%;width:' + pct + '%;'
          : 'right:50%;width:' + pct + '%;';

      var normLabel = neutral ? '0' : String(Math.abs(norm));
      var normAlignClass = neutral ? ' axis-row__norm--ctr' : norm < 0 ? ' axis-row__norm--left' : ' axis-row__norm--right';

      html +=
        '<div class="axis-row a-' + (idx + 1) + '">' +
          '<div class="axis-row__side' + leftOn + '">' +
            '<b>' + escapeHtml(left.k || '') + '</b>' +
            '<small>' + escapeHtml(left.label || '') + '</small>' +
            '<span class="axis-jp">' + escapeHtml(left.desc || '') + '</span>' +
          '</div>' +
          '<div class="axis-row__bar-col">' +
            '<div class="axis-row__norm' + normAlignClass + '" title="バーが左に伸びるほどその数が大きい（最大100）。右に伸びる場合も同様。">' +
              escapeHtml(normLabel) +
            '</div>' +
            '<div class="axis-row__bar">' +
              '<div class="axis-row__fill" data-norm="' + norm + '" style="' + fillStyle + '"></div>' +
            '</div>' +
          '</div>' +
          '<div class="axis-row__side' + rightOn + '">' +
            '<b>' + escapeHtml(right.k || '') + '</b>' +
            '<small>' + escapeHtml(right.label || '') + '</small>' +
            '<span class="axis-jp">' + escapeHtml(right.desc || '') + '</span>' +
          '</div>' +
        '</div>';
    });
    return html;
  }

  function buildAxisBarsHtml(sums) {
    return '<div class="axes">' + buildAxisBarsRowsHtml(sums) + '</div>';
  }

  /** 診断未実施などでリアルなスコアがないとき: グラフ見本＋重ね説明 */
  function buildAxisBarsSamplePlaceholderHtml() {
    var rows = buildAxisBarsRowsHtml(SAMPLE_AXIS_SUMS_FOR_UI);
    var overlay =
      '<div class="axes-sample-overlay" role="status" aria-live="polite">' +
        '<p class="axes-sample-overlay__text">' +
        escapeHtml('見本です') +
        '<br>' +
        escapeHtml('診断後はあなたの結果が表示されます') +
        '</p>' +
      '</div>';
    return '<div class="axes axes--sample">' + rows + overlay + '</div>';
  }

  // ── 継続コツをリスト化 ────────────────────────────────────────────────────────
  function buildTipsHtml(text) {
    var sentences = text.split('。')
      .map(function (s) { return s.trim(); })
      .filter(function (s) { return s.length > 15; })
      .slice(0, 3);

    var html = '<div class="tips">';
    sentences.forEach(function (s, i) {
      html +=
        '<div class="tip">' +
          '<div class="tip__num">' + (i + 1) + '</div>' +
          '<div class="tip__text">' + escapeHtml(s + '。') + '</div>' +
        '</div>';
    });
    html += '</div>';
    return html;
  }

  // ── おすすめ運動セクション ─────────────────────────────────────────────────────
  var SUIT_EMOJI = ['🌳','🎵','🚲','💪','🏊','🏃','🧘','🎾','⚽','🥊','🏔️','🤸'];

  function buildSuggestHtml(suitText) {
    // suit_text から「・」区切りの最初の文章の運動名を抽出
    var firstSentence = suitText.split('。')[0] || '';
    var items = firstSentence.split('・')
      .map(function (s) { return s.trim().replace(/^。+|。+$/g, ''); })
      .filter(function (s) { return s.length > 1 && s.length < 20; })
      .slice(0, 4);

    if (items.length < 2) {
      // フォールバック: テキストカードで表示
      return '<div class="desc-card"><p>' + escapeHtml(suitText) + '</p></div>';
    }

    // 4つ揃えるためにパディング
    while (items.length < 4) items.push('その他の運動');

    var html = '<div class="suggest">';
    items.forEach(function (name, i) {
      html +=
        '<div class="suggest__item">' +
          '<div class="suggest__icon">' + (SUIT_EMOJI[i] || '🏅') + '</div>' +
          '<div class="suggest__name">' + escapeHtml(name) + '</div>' +
          '<div class="suggest__hint">おすすめ</div>' +
        '</div>';
    });
    html += '</div>';
    return html;
  }

  function isSecretCompatibilityUnlocked() {
    return getShareCompletionCount(loadShareProgress()) >= 3;
  }

  function getTraitForCodeAt(code, idx) {
    var axis = AXES()[idx] || {};
    var letter = String(code || '').charAt(idx);
    if (axis.left && axis.left.k === letter) return axis.left;
    if (axis.right && axis.right.k === letter) return axis.right;
    return { k: letter, label: letter, desc: letter };
  }

  function findListedCompatibility(myType, otherCode) {
    var compat = (myType && myType.compatible_types) || {};
    var groups = [
      { key:'good', label:'相性◎', cls:'pill--good' },
      { key:'bad', label:'要注意', cls:'pill--care' },
    ];
    var found = null;
    groups.some(function (group) {
      var items = compat[group.key] || [];
      return items.some(function (item) {
        if (item.code !== otherCode) return false;
        found = {
          label: group.label,
          cls: group.cls,
          reason: item.reason,
        };
        return true;
      });
    });
    return found;
  }

  function buildSecretCompatibilityDetailHtml(myCode, otherCode) {
    var myType = TYPES()[myCode];
    var otherType = TYPES()[otherCode];
    var otherChar = CHARS()[otherCode];
    if (!myType || !otherType || !otherChar) return '';

    var same = [];
    var diff = [];
    for (var i = 0; i < 4; i += 1) {
      var mine = getTraitForCodeAt(myCode, i);
      var theirs = getTraitForCodeAt(otherCode, i);
      if (myCode.charAt(i) === otherCode.charAt(i)) {
        same.push(mine.desc);
      } else {
        diff.push(mine.desc + ' ⇄ ' + theirs.desc);
      }
    }

    var listed = findListedCompatibility(myType, otherCode);
    var matchCount = same.length;
    var label = listed ? listed.label : (
      matchCount >= 3 ? '相性◎' : (matchCount === 2 ? '相性○' : (matchCount === 1 ? '補完型' : '正反対'))
    );
    var labelClass = listed ? listed.cls : (matchCount >= 2 ? 'pill--good' : 'pill--care');
    var lead = listed
      ? listed.reason
      : (
        matchCount >= 3
          ? '運動の入り方や心地よいペースがかなり近い組み合わせです。細かい役割だけ決めれば、自然に一緒に動きやすい相性です。'
          : matchCount === 2
            ? '似ている部分と違う部分が半分ずつある、バランス型の相性です。共通点を起点にしつつ、違う軸では相手のペースを確認すると続きやすくなります。'
            : matchCount === 1
              ? '運動への入り方が大きく違うぶん、相手の得意さが自分の盲点を補ってくれる相性です。最初に強度・頻度・目的をすり合わせるのがコツです。'
              : '4軸すべてが反対の、かなり刺激が強い組み合わせです。無理に同じメニューをやるより、別々の得意を尊重して合流ポイントを作ると関係が崩れにくくなります。'
      );

    return (
      '<div class="secret-compat-detail">' +
        '<div class="secret-compat-detail__hero">' +
          '<span class="pill ' + labelClass + '">' + escapeHtml(label) + '</span>' +
          '<div class="secret-compat-detail__char" style="background:' + safeCssColor(otherChar.tint, '#FFE9C2') + '">' +
            charImgFullHtml(otherCode) +
          '</div>' +
          '<div>' +
            '<div class="secret-compat-detail__name">' + escapeHtml(otherType.type_name) + '（' + escapeHtml(otherChar.animal) + '）</div>' +
            '<div class="secret-compat-detail__code">' + escapeHtml(myCode) + ' × ' + escapeHtml(otherCode) + '</div>' +
          '</div>' +
        '</div>' +
        '<p class="secret-compat-detail__lead">' + escapeHtml(replaceTypeCodes(lead)) + '</p>' +
        '<div class="secret-compat-detail__meta">' +
          '<div><b>似ているところ</b><span>' + escapeHtml(same.length ? same.join(' / ') : 'なし') + '</span></div>' +
          '<div><b>違うところ</b><span>' + escapeHtml(diff.length ? diff.join(' / ') : 'なし') + '</span></div>' +
        '</div>' +
      '</div>'
    );
  }

  function buildSecretCompatibilityPanelHtml(myCode) {
    var buttons = '';
    ORDER().forEach(function (code) {
      var t = TYPES()[code];
      var ch = CHARS()[code];
      if (!t || !ch) return;
      buttons +=
        '<button type="button" class="secret-compat-picker__btn' + (code === myCode ? ' secret-compat-picker__btn--self' : '') +
        '" style="--picker-code-active:' + tintToPickerActiveCodeHex(ch.tint) +
        '" data-secret-compat-code="' + escapeAttr(code) + '" aria-label="' + escapeAttr(code + ' ' + t.type_name) + '">' +
          '<span class="secret-compat-picker__thumb" style="background:' + safeCssColor(ch.tint, '#FFE9C2') + '">' +
            charImgFullHtml(code) +
          '</span>' +
          '<span class="secret-compat-picker__code">' + escapeHtml(code) + '</span>' +
        '</button>';
    });
    return (
      '<div class="secret-compat-panel" id="secretCompatibilityPanel">' +
        '<div class="secret-compat-picker" role="list">' + buttons + '</div>' +
        '<div id="secretCompatibilityResult" class="secret-compat-result" aria-live="polite"></div>' +
      '</div>'
    );
  }

  function buildSecretCompatibilityPageHtml(myCode) {
    var myType = TYPES()[myCode];
    var myChar = CHARS()[myCode];
    if (!myType || !myChar) return '';
    return (
      '<div class="secret-compat-page" data-secret-compat-root data-my-code="' + escapeAttr(myCode) + '">' +
        '<div class="secret-compat-page__hero">' +
          '<div class="secret-compat-page__char" style="background:' + safeCssColor(myChar.tint, '#FFE9C2') + '">' +
            charImgFullHtml(myCode) +
          '</div>' +
          '<div>' +
            '<h1 class="secret-compat-page__title">' + escapeHtml(myType.type_name) + '</h1>' +
            '<p class="secret-compat-page__text">気になる仲間と一緒に運動しよう！</p>' +
          '</div>' +
        '</div>' +
        buildSecretCompatibilityPanelHtml(myCode) +
      '</div>'
    );
  }

  function buildSecretCompatibilityCtaHtml(myCode) {
    return (
      '<div class="secret-compat secret-compat--button" id="secretCompatibility" data-secret-compat-root data-my-code="' + escapeAttr(myCode) + '" role="button" tabindex="0" aria-label="他のアニマルとの相性を見る">' +
        '<div class="secret-compat__badge">SECRET UNLOCKED</div>' +
        '<h3 class="secret-compat__title">他のアニマルとの相性を見る</h3>' +
        '<p class="secret-compat__text">ボス限定機能。あなたと他の仲間たちの相性を詳しく見ることができます</p>' +
      '</div>'
    );
  }

  // ── 結果セクション全体 ────────────────────────────────────────────────────────
  function buildTypeSections(t, axisHtml) {
    function sec(num, label, body) {
      return '<div class="sec">' +
        '<div class="sec__head">' +
          '<span class="num">0' + num + '</span>' +
          '<h3>' + escapeHtml(label) + '</h3>' +
          '<span class="deco"></span>' +
        '</div>' +
        body +
      '</div>';
    }
    function textCard(innerTitle, text) {
      return '<div class="desc-card">' +
        (innerTitle ? '<h4 class="desc-card__title">' + escapeHtml(innerTitle) + '</h4>' : '') +
        '<p>' + escapeHtml(text) + '</p>' +
      '</div>';
    }

    var compat = t.compatible_types || {};
    var goodItems = compat.good || [];
    var badItems  = compat.bad  || [];
    var compatInner = '';
    if (goodItems.length) compatInner += compatCard(goodItems[0], 'pill--good', '相性◎');
    if (badItems.length)  compatInner += compatCard(badItems[0],  'pill--care', '要注意');
    var compatSection = compatInner
      ? '<div class="sec"><div class="sec__head"><span class="num">06</span><h3>アニマル相性</h3><span class="deco"></span></div><div class="compat">' + compatInner + '</div></div>'
      : '';

    return (
      sec(1, '4軸プロフィール', axisHtml) +
      sec(2, 'あなたのアニマルタイプ', textCard(t.concept_title,      t.concept)) +
      sec(3, 'おすすめの運動',     textCard(t.suit_title,         t.suit_text)) +
      sec(4, '苦手な運動',         textCard(t.unsuited_title,     t.unsuited_text)) +
      sec(5, '続けるコツ',         textCard(t.continuation_title, t.continuation_text)) +
      compatSection +
      (compatSection && t.code && isSecretCompatibilityUnlocked()
        ? buildSecretCompatibilityCtaHtml(t.code)
        : '')
    );
  }

  // ── 結果共有PNG（Instagramフィード4:5 / Canvas・同一オリジン画像のみ） ───────
  var STORY_W = 1080;
  var STORY_H = 1350;
  var FONT_JP_DRAW = '"Zen Maru Gothic", "Hiragino Sans", sans-serif';
  var FONT_EN_DRAW = '"Plus Jakarta Sans", -apple-system, system-ui, sans-serif';
  var AXIS_FILL_HEX = ['#FF4D5A', '#4A8DFF', '#FFD23F', '#3DD68C'];
  var INK_HEX = '#2B2535';
  var INK_SOFT_HEX = '#5C5466';
  var INK_MUTE_HEX = '#948CA0';
  var PAPER_MUTE_HEX = '#F2EFE6';

  function canvasRoundRect(ctx, x, y, w, h, r) {
    var rr = Math.min(r, w / 2, h / 2);
    ctx.beginPath();
    ctx.moveTo(x + rr, y);
    ctx.lineTo(x + w - rr, y);
    ctx.quadraticCurveTo(x + w, y, x + w, y + rr);
    ctx.lineTo(x + w, y + h - rr);
    ctx.quadraticCurveTo(x + w, y + h, x + w - rr, y + h);
    ctx.lineTo(x + rr, y + h);
    ctx.quadraticCurveTo(x, y + h, x, y + h - rr);
    ctx.lineTo(x, y + rr);
    ctx.quadraticCurveTo(x, y, x + rr, y);
    ctx.closePath();
  }

  function loadImageSameOrigin(src) {
    return new Promise(function (resolve, reject) {
      if (!src) {
        reject(new Error('empty'));
        return;
      }
      var img = new Image();
      img.crossOrigin = 'anonymous';
      img.onload = function () { resolve(img); };
      img.onerror = function () { reject(new Error('img')); };
      img.src = src;
    });
  }

  function wrapTextLines(ctx, text, maxW) {
    var s = String(text || '').trim();
    if (!s.length) return [''];
    var lines = [];
    var i = 0;
    while (i < s.length) {
      var lo = i;
      var hi = s.length + 1;
      while (lo + 1 < hi) {
        var mid = (lo + hi) >> 1;
        var sub = s.slice(i, mid);
        if (ctx.measureText(sub).width <= maxW) lo = mid;
        else hi = mid;
      }
      var line = s.slice(i, lo).trim();
      if (!line.length) {
        line = s.slice(i, i + 1);
        lo = i + 1;
      }
      lines.push(line);
      i = lo;
    }
    return lines;
  }

  function drawStoryAxesBlock(ctx, originX, originY, innerW, sums, layoutOpts) {
    var opts = layoutOpts || {};
    var axes = AXES();
    var keys = ['social', 'structure', 'resilience', 'intensity'];
    var uiScale = innerW / 420;
    var horizontalPad = Math.round(14 * uiScale);
    var rowGap = opts.rowGap != null ? opts.rowGap : 16;
    var rowH = opts.rowH != null ? opts.rowH : 200;
    var barH = Math.max(20, Math.round(12 * uiScale));
    var gCol = Math.round(10 * uiScale);
    var usable = innerW - horizontalPad * 2;
    var sideW = Math.round(72 * uiScale);
    var guard = 48;
    while (usable - 2 * sideW - 2 * gCol < 260 && guard-- > 0) sideW -= 4;
    var barColW = Math.max(200, usable - 2 * sideW - 2 * gCol);

    // 結果UIの白カード感を、PNG上でも見える丸みと影に調整する。
    var axisCardR = Math.min(Math.round(rowH * 0.49), Math.max(82, Math.round(38 * uiScale)));
    var axisShadowR = Math.min(Math.round(rowH * 0.5), axisCardR + Math.round(2 * uiScale));

    var fsK = Math.round(20 * uiScale);
    var fsJp = Math.round(8 * uiScale);
    var fsNorm = Math.round(9 * uiScale);
    var sideJpGap = Math.max(8, Math.round(4 * uiScale));
    var jpLineH = fsJp * 1.3;
    var normToBarGap = Math.max(5, Math.round(3 * uiScale));

    function sideStackHeight(lineCount) {
      return fsK + sideJpGap + Math.max(1, lineCount) * jpLineH;
    }

    keys.forEach(function (key, idx) {
      var axisInfo = axes[idx] || {};
      var left  = axisInfo.left  || {};
      var right = axisInfo.right || {};
      var norm  = normalizeAxis(sums[key]);
      var pct   = Math.abs(norm) / 2;
      var neutral = norm === 0;
      var isPlus  = norm > 0;
      var ry = originY + idx * (rowH + rowGap);
      var cardW = innerW;
      var cardH = rowH;
      var cardMidY = ry + cardH / 2;

      ctx.save();
      ctx.textBaseline = 'top';

      // 結果UIのbox-shadowをPNGで視認できるよう、柔らかい影と薄い境界を併用する。
      ctx.save();
      ctx.shadowColor = 'rgba(43,37,53,0.10)';
      ctx.shadowBlur = Math.round(8 * uiScale);
      ctx.shadowOffsetY = Math.round(5 * uiScale);
      ctx.fillStyle = '#FFFFFF';
      canvasRoundRect(ctx, originX, ry, cardW, cardH, axisCardR);
      ctx.fill();
      ctx.restore();

      ctx.strokeStyle = 'rgba(43,37,53,0.035)';
      ctx.lineWidth = Math.max(1, Math.round(uiScale));
      canvasRoundRect(ctx, originX + ctx.lineWidth / 2, ry + ctx.lineWidth / 2, cardW - ctx.lineWidth, cardH - ctx.lineWidth, axisCardR);
      ctx.stroke();

      var baseX = originX + horizontalPad;
      var leftCx  = baseX + sideW / 2;
      var rightCx = baseX + sideW + gCol + barColW + gCol + sideW / 2;
      var bx = baseX + sideW + gCol;
      var cxMid = bx + barColW / 2;

      ctx.font = '600 ' + fsJp + 'px ' + FONT_JP_DRAW;
      var leftLines = wrapTextLines(ctx, left.desc || '', sideW + 24).slice(0, 2);
      var rightLines = wrapTextLines(ctx, right.desc || '', sideW + 24).slice(0, 2);
      var leftStackH = sideStackHeight(leftLines.length);
      var rightStackH = sideStackHeight(rightLines.length);
      var midH = fsNorm + normToBarGap + barH;

      // CSS の align-items:center / justify-content:center と同じく列ごとに中央寄せ。
      var yLeftCol = Math.round(cardMidY - leftStackH / 2);
      var yRightCol = Math.round(cardMidY - rightStackH / 2);
      var yMidCol = Math.round(cardMidY - midH / 2);

      var yPoleL = yLeftCol;
      var yJpL0 = yPoleL + fsK + sideJpGap;

      var yPoleR = yRightCol;
      var yJpR0 = yPoleR + fsK + sideJpGap;

      var normY = yMidCol;
      var barY = yMidCol + fsNorm + normToBarGap;

      // 左サイド（中央寄せ／is-on と同様の色）
      ctx.textAlign = 'center';
      ctx.font = '800 ' + fsK + 'px ' + FONT_EN_DRAW;
      ctx.fillStyle = !neutral && !isPlus ? INK_HEX : INK_MUTE_HEX;
      ctx.fillText(left.k || '', leftCx, yPoleL);

      ctx.font = '600 ' + fsJp + 'px ' + FONT_JP_DRAW;
      ctx.fillStyle = !neutral && !isPlus ? INK_SOFT_HEX : INK_MUTE_HEX;
      leftLines.forEach(function (ln, j) {
        ctx.fillText(ln, leftCx, yJpL0 + j * jpLineH);
      });

      // 右サイド
      ctx.font = '800 ' + fsK + 'px ' + FONT_EN_DRAW;
      ctx.fillStyle = !neutral && isPlus ? INK_HEX : INK_MUTE_HEX;
      ctx.fillText(right.k || '', rightCx, yPoleR);

      ctx.font = '600 ' + fsJp + 'px ' + FONT_JP_DRAW;
      ctx.fillStyle = !neutral && isPlus ? INK_SOFT_HEX : INK_MUTE_HEX;
      rightLines.forEach(function (ln, j) {
        ctx.fillText(ln, rightCx, yJpR0 + j * jpLineH);
      });

      // 中央ノルム（HTML と同様の寄せ）
      var normTxt = neutral ? '0' : String(Math.abs(norm));
      ctx.font = '700 ' + fsNorm + 'px ' + FONT_EN_DRAW;
      ctx.fillStyle = INK_MUTE_HEX;
      ctx.globalAlpha = 0.78;
      if (neutral) {
        ctx.textAlign = 'center';
        ctx.fillText(normTxt, cxMid, normY);
      } else if (!isPlus) {
        ctx.textAlign = 'left';
        ctx.fillText(normTxt, bx, normY);
      } else {
        ctx.textAlign = 'right';
        ctx.fillText(normTxt, bx + barColW, normY);
      }
      ctx.globalAlpha = 1;

      // バー（トラック＋センターから伸びる塗り）
      ctx.fillStyle = PAPER_MUTE_HEX;
      canvasRoundRect(ctx, bx, barY, barColW, barH, barH / 2);
      ctx.fill();

      if (!neutral) {
        var fillW = Math.max(
          norm === 0 ? 0 : 10,
          (barColW * pct) / 100
        );
        ctx.fillStyle = AXIS_FILL_HEX[idx] || AXIS_FILL_HEX[0];
        if (isPlus) {
          canvasRoundRect(ctx, cxMid, barY, fillW, barH, barH / 2);
        } else {
          canvasRoundRect(ctx, cxMid - fillW, barY, fillW, barH, barH / 2);
        }
        ctx.fill();
      }

      ctx.textAlign = 'left';
      ctx.restore();
    });

    ctx.textBaseline = 'alphabetic';
    return originY + keys.length * (rowH + rowGap) - rowGap;
  }

  function drawStoryHero(ctx, x, y, w, boxH, code, t, charRow, charImg) {
    ctx.save();

    var lsHeroSave = '';
    var tint = charRow && charRow.tint ? charRow.tint : '#FFE9C2';
    var cardR = 84;

    // 結果ヒーロー相当のフラットシャドウ
    ctx.fillStyle = 'rgba(43,37,53,0.06)';
    canvasRoundRect(ctx, x + 6, y + 14, w - 12, Math.max(0, boxH - 20), cardR + 10);
    ctx.fill();

    ctx.fillStyle = tint;
    canvasRoundRect(ctx, x, y, w, boxH, cardR);
    ctx.fill();

    ctx.save();
    canvasRoundRect(ctx, x, y, w, boxH, cardR);
    ctx.clip();

    // 軽いスパークル（結果画面イメージ）
    ctx.globalAlpha = 0.52;
    ctx.fillStyle = INK_HEX;
    ctx.font = '700 34px ' + FONT_JP_DRAW;
    ctx.textAlign = 'left';
    ctx.textBaseline = 'top';
    var decoInset = Math.round(cardR * 0.68);
    ctx.fillText('\u2726', x + decoInset, y + Math.round(cardR * 0.42));
    ctx.textAlign = 'right';
    ctx.fillText('\u2727', x + w - decoInset, y + Math.round(cardR * 0.52));
    ctx.textAlign = 'left';
    ctx.globalAlpha = 1;

    var padX = 52;
    var ty = y + 48;

    var cR = Math.min(
      Math.max(108, Math.floor(w * 0.12)),
      118
    );
    var cX = x + w / 2;
    var cY = ty + cR + 4;

    // キャラ下のごく薄い円形シェード
    ctx.save();
    ctx.globalAlpha = 0.35;
    var g = ctx.createRadialGradient(cX, cY + cR + 34, 0, cX, cY + cR + 34, cR + 96);
    g.addColorStop(0, 'rgba(43,37,53,0.16)');
    g.addColorStop(1, 'rgba(43,37,53,0)');
    ctx.fillStyle = g;
    ctx.fillRect(x, cY + cR - 20, w, cR + 80);
    ctx.restore();

    ctx.save();
    ctx.shadowColor = 'rgba(43,37,53,0.22)';
    ctx.shadowBlur = 26;
    ctx.shadowOffsetY = 10;
    ctx.fillStyle = '#FFFFFF';
    ctx.beginPath();
    ctx.arc(cX, cY, cR, 0, Math.PI * 2);
    ctx.fill();
    ctx.restore();

    if (charImg && charImg.complete && charImg.naturalWidth > 0) {
      ctx.save();
      ctx.beginPath();
      ctx.arc(cX, cY, cR, 0, Math.PI * 2);
      ctx.clip();
      var scale =
        Math.max((cR * 2) / charImg.naturalWidth, (cR * 2) / charImg.naturalHeight) * 0.88;
      var dw = charImg.naturalWidth * scale;
      var dh = charImg.naturalHeight * scale;
      ctx.drawImage(charImg, cX - dw / 2, cY - dh / 2, dw, dh);
      ctx.restore();
    }

    ty = cY + cR + 30;
    var maxTextW = w - padX * 2;

    ctx.textAlign = 'center';
    ctx.textBaseline = 'top';
    ctx.fillStyle = INK_HEX;
    ctx.globalAlpha = 0.82;
    try {
      if ('letterSpacing' in ctx && typeof ctx.letterSpacing !== 'undefined') {
        lsHeroSave = ctx.letterSpacing;
        ctx.letterSpacing = '0.2em';
      }
    } catch (_eLs) {}
    ctx.font = '800 22px ' + FONT_JP_DRAW;
    var conceptLines = wrapTextLines(ctx, t.concept_title || '', maxTextW);
    conceptLines.slice(0, 3).forEach(function (line, j) {
      ctx.fillText(line, x + w / 2, ty + j * 27);
    });
    ctx.globalAlpha = 1;
    try {
      if ('letterSpacing' in ctx) ctx.letterSpacing = lsHeroSave;
    } catch (_eLs2) {}

    ty += Math.min(conceptLines.length, 3) * 27 + 7;

    var fsName = Math.min(
      52,
      Math.max(36, Math.floor((w / Math.max(String(t.type_name || '').length * 0.62, 9))))
    );
    ctx.font = '900 ' + fsName + 'px ' + FONT_JP_DRAW;
    ctx.fillStyle = INK_HEX;
    var nameLines = wrapTextLines(ctx, t.type_name || '', maxTextW);
    var nameLh = fsName + 6;
    nameLines.slice(0, 3).forEach(function (line, j) {
      ctx.fillText(line, x + w / 2, ty + j * nameLh);
    });
    ty += Math.min(nameLines.length, 3) * nameLh + 8;

    ctx.font = '700 22px ' + FONT_EN_DRAW;
    ctx.fillStyle = INK_SOFT_HEX;
    ctx.fillText(code, x + w / 2, ty);
    ty += 32;

    var bottomReserve = y + boxH - 24;
    var fsCatch = 19;
    var catchLines = [];
    var linesUsed = [];
    while (fsCatch >= 14) {
      ctx.font = '700 ' + fsCatch + 'px ' + FONT_JP_DRAW;
      catchLines = wrapTextLines(ctx, t.tagline || '', maxTextW - 40);
      linesUsed = catchLines.slice(0, 3);
      var estH = 18 + linesUsed.length * (fsCatch + 8);
      if (ty + estH <= bottomReserve) break;
      fsCatch -= 1;
    }
    var boxHCatch = Math.min(
      bottomReserve - ty - 12,
      Math.max(44, 18 + linesUsed.length * (fsCatch + 8))
    );
    if (linesUsed.length && linesUsed[0].length && boxHCatch >= 44) {
      ctx.fillStyle = 'rgba(255,255,255,.72)';
      canvasRoundRect(ctx, x + padX, ty, w - padX * 2, boxHCatch, 28);
      ctx.fill();
      ctx.fillStyle = INK_HEX;
      ctx.font = '700 ' + fsCatch + 'px ' + FONT_JP_DRAW;
      ctx.textAlign = 'center';
      linesUsed.forEach(function (line, j) {
        ctx.fillText(line, x + w / 2, ty + 14 + j * (fsCatch + 8));
      });
    }

    ctx.restore();
    ctx.restore();
    ctx.globalAlpha = 1;
    ctx.textAlign = 'left';
    ctx.textBaseline = 'alphabetic';
    try {
      if ('letterSpacing' in ctx) ctx.letterSpacing = lsHeroSave;
    } catch (_eLs3) {}
  }

  function formatDiagnosisDateJa(d) {
    return new Intl.DateTimeFormat('ja-JP', {
      year: 'numeric',
      month: 'long',
      day: 'numeric',
    }).format(d || new Date());
  }

  function buildResultPngFilename(code) {
    var d = new Date();
    var y = d.getFullYear();
    var m = d.getMonth() + 1;
    var day = d.getDate();
    var ms = String(m).length >= 2 ? String(m) : '0' + m;
    var ds = String(day).length >= 2 ? String(day) : '0' + day;
    var filename = '運動アニマル診断_' + (code || 'RESULT') + '_' + y + '-' + ms + '-' + ds + '.png';
    return typeof filename.normalize === 'function' ? filename.normalize('NFC') : filename;
  }

  function downloadBlobWithAnchor(blob, filename) {
    var url = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = url;
    a.download = filename;
    a.rel = 'noopener';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    setTimeout(function () { URL.revokeObjectURL(url); }, 2400);
  }

  function saveBlobAsPng(blob, filename) {
    if (window.showSaveFilePicker) {
      return window.showSaveFilePicker({
        suggestedName: filename,
        id: 'exercise-result-story-png',
        startIn: 'downloads',
        types: [
          {
            description: 'PNG image',
            accept: { 'image/png': ['.png'] },
          },
        ],
      })
        .then(function (handle) {
          return handle.createWritable();
        })
        .then(function (writable) {
          return writable.write(blob).then(function () {
            return writable.close();
          });
        })
        .catch(function (err) {
          if (err && err.name === 'AbortError') return false;
          downloadBlobWithAnchor(blob, filename);
          return true;
        });
    }
    downloadBlobWithAnchor(blob, filename);
    return Promise.resolve(true);
  }

  /** 結果PNG用・4軸ブロック総高（ヘッダ行は含めない）— layout と draw で共有 */
  function storyAxesVerticalSpanPx(rowH, rowGap) {
    return 4 * (rowH + rowGap) - rowGap;
  }

  function exerciseResultStoryToBlob(code, sums) {
    return new Promise(function (resolve, reject) {
      var t = TYPES()[code];
      var c = CHARS()[code];
      if (!t || !c || !isValidStoredSums(sums)) {
        reject(new Error('data'));
        return;
      }

      var src = c.imgFull || c.img;

      loadImageSameOrigin(src)
        .catch(function () { return null; })
        .then(function (charImg) {
          var canvas = document.createElement('canvas');
          canvas.width = STORY_W;
          canvas.height = STORY_H;
          var ctx = canvas.getContext('2d');
          if (!ctx) throw new Error('ctx');

          ctx.fillStyle = '#FFF8EE';
          ctx.fillRect(0, 0, STORY_W, STORY_H);

          // ─ 結果画面（.stage 横パディング 20px / max-width 460）の比率で左右ガター
          var margin = Math.round(STORY_W * (20 / 460));
          margin = Math.max(44, Math.min(52, margin));
          var innerW = STORY_W - margin * 2;

          var CANVAS_BOTTOM_MARGIN = Math.round(STORY_H * (44 / 1350)); // canvas 下端のゆとり
          var BETWEEN_AXES_AND_DATE = Math.max(
            36,
            Math.min(
              50,
              Math.round(STORY_W * (20 / 1080))
            )
          ); // 軸カード下端〜「診断日」（過大スケールを避ける）
          var DATE_TOP_PAD_ABOVE_AXES_PX = 24; // 軸下端〜診断日までの下限に追加（見た目直上の余白）

          var uiScale = innerW / 420;
          var axisRowGap = Math.round(8 * uiScale);
          axisRowGap = Math.max(16, Math.min(20, axisRowGap));
          var axisRowH = Math.round(58 * uiScale);
          axisRowH = Math.max(132, Math.min(140, axisRowH));
          var axesOpts = { rowH: axisRowH, rowGap: axisRowGap };
          var axesSpan = storyAxesVerticalSpanPx(axisRowH, axisRowGap);

          var footBaselineY = STORY_H - CANVAS_BOTTOM_MARGIN;

          // 見出し行はPNGでは描かず、ヒーロー直下に4軸カードを自然につなげる。
          var GAP_AFTER_HERO = Math.round(14 * uiScale);
          GAP_AFTER_HERO = Math.max(30, Math.min(38, GAP_AFTER_HERO));

          var RESERVED_TITLE_BASELINE = Math.round(STORY_H * (42 / 1350)); // 上側のゆとり
          var TITLE_TO_HERO_GAP = Math.round(STORY_W * (44 / 1080)); // 「運動アニマル」直下〜ヒーロー頭
          TITLE_TO_HERO_GAP = Math.max(30, Math.min(42, TITLE_TO_HERO_GAP));

          var heroY = RESERVED_TITLE_BASELINE + 34 + TITLE_TO_HERO_GAP;
          var targetHeroH = 520;
          var minFootGap = BETWEEN_AXES_AND_DATE + DATE_TOP_PAD_ABOVE_AXES_PX;
          var overflowY = heroY + targetHeroH + GAP_AFTER_HERO + axesSpan + minFootGap - footBaselineY;
          var heroH = Math.max(486, targetHeroH - Math.max(0, overflowY));
          var axesOriginY = heroY + heroH + GAP_AFTER_HERO;

          ctx.fillStyle = INK_HEX;
          ctx.font = '800 30px ' + FONT_EN_DRAW;
          ctx.textAlign = 'center';
          ctx.fillText('運動アニマル診断結果', STORY_W / 2, RESERVED_TITLE_BASELINE + 26);

          drawStoryHero(ctx, margin, heroY, innerW, heroH, code, t, c, charImg || null);

          var axesBottom = drawStoryAxesBlock(
            ctx,
            margin,
            axesOriginY,
            innerW,
            sums,
            axesOpts
          );

          var footY = axesBottom + BETWEEN_AXES_AND_DATE + DATE_TOP_PAD_ABOVE_AXES_PX;
          if (footY > footBaselineY) footY = footBaselineY;
          var minAxesToFoot = 34 + DATE_TOP_PAD_ABOVE_AXES_PX;
          if (footY < axesBottom + minAxesToFoot) footY = axesBottom + minAxesToFoot;

          ctx.textAlign = 'center';
          ctx.fillStyle = INK_MUTE_HEX;
          ctx.globalAlpha = 0.68;
          ctx.font = '500 22px ' + FONT_JP_DRAW;
          ctx.fillText(
            '診断日 ' + formatDiagnosisDateJa(new Date()),
            STORY_W / 2,
            footY
          );
          ctx.globalAlpha = 1;

          return new Promise(function (resBlob, rejBlob) {
            canvas.toBlob(function (blob) {
              if (blob) resBlob(blob);
              else rejBlob(new Error('toBlob'));
            }, 'image/png');
          });
        })
        .then(resolve)
        .catch(reject);
    });
  }

  function canSaveResultStoryImage() {
    return !!(
      state.lastCode &&
      TYPES()[state.lastCode] &&
      isValidStoredSums(state.lastScores) &&
      el.resultSections &&
      !el.resultSections.querySelector('.axes.axes--sample')
    );
  }

  // ── タイプ詳細モーダル HTML ───────────────────────────────────────────────────
  function buildTypeDetailHtml(t, code) {
    var c    = CHARS()[code || t.code];
    var tint = safeCssColor(c && c.tint, '#FFE9C2');

    function secText(num, label, innerTitle, text) {
      return (
        '<div class="sec">' +
          '<div class="sec__head">' +
            '<span class="num">0' + num + '</span>' +
            '<h3>' + escapeHtml(label) + '</h3>' +
            '<span class="deco"></span>' +
          '</div>' +
          '<div class="desc-card">' +
            (innerTitle ? '<h4 class="desc-card__title">' + escapeHtml(innerTitle) + '</h4>' : '') +
            '<p>' + escapeHtml(text) + '</p>' +
          '</div>' +
        '</div>'
      );
    }

    var compat = t.compatible_types || {};
    var goodItems = compat.good || [];
    var badItems  = compat.bad  || [];
    var compatInner = '';
    if (goodItems.length) compatInner += compatCard(goodItems[0], 'pill--good', '相性◎');
    if (badItems.length)  compatInner += compatCard(badItems[0],  'pill--care', '要注意');
    var compatHtml = compatInner
      ? '<div class="sec">' +
          '<div class="sec__head"><span class="num">05</span><h3>アニマル相性</h3><span class="deco"></span></div>' +
          '<div class="compat">' + compatInner + '</div>' +
        '</div>'
      : '';

    return (
      '<div class="modal-type-hero" style="background:' + tint + '">' +
        '<div class="modal-type-code">' + escapeHtml(code || t.code) + '</div>' +
        '<div class="modal-type-char">' + charImgFullHtml(code || t.code) + '</div>' +
        '<h2 class="modal-type-name">' + escapeHtml(t.type_name) + '</h2>' +
        '<p class="modal-type-tag">' + escapeHtml(t.tagline) + '</p>' +
      '</div>' +
      secText(1, 'あなたのアニマルタイプ', t.concept_title,      t.concept) +
      secText(2, 'おすすめの運動',     t.suit_title,         t.suit_text) +
      secText(3, '苦手な運動',         t.unsuited_title,     t.unsuited_text) +
      secText(4, '続けるコツ',         t.continuation_title, t.continuation_text) +
      compatHtml
    );
  }

  // ── クイズ UI ──────────────────────────────────────────────────────────────
  function updateQuizUI() {
    var questions = SQ();
    var i = state.quizIndex;
    var total = questions.length;
    var q = questions[i];

    // プログレスバー
    var pct = ((i + 1) / total) * 100;
    el.cardFill.style.width = pct + '%';

    // 問番号
    var numEl = document.getElementById('quizCurrentNum');
    var totEl = document.getElementById('quizTotalNum');
    if (numEl) numEl.textContent = String(i + 1).padStart(2, '0');
    if (totEl) totEl.textContent = ' / ' + total;


    // アニメーション
    el.qContent.classList.remove('anim-fwd', 'anim-back');
    void el.qContent.offsetWidth;
    el.qContent.classList.add(state.animFwd ? 'anim-fwd' : 'anim-back');

    // 質問テキスト
    el.qText.textContent = q.text;

    // Likert 6段階
    el.qOptions.innerHTML = '';
    var sel = state.answers[i];
    var likert = document.createElement('div');
    likert.className = 'likert';
    likert.setAttribute('role', 'radiogroup');

    // l-1〜l-6 に対応するoptionIdx（l-1=optIdx 5 = 強い反対, l-6=optIdx 0 = 強い賛成）
    var CLASSES = ['l-1','l-2','l-3','l-4','l-5','l-6'];
    var OPT_IDX = [5, 4, 3, 2, 1, 0];

    CLASSES.forEach(function (cls, vi) {
      var optIdx = OPT_IDX[vi];
      var score  = optionIndexToScore(optIdx);
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'likert__opt ' + cls;
      btn.setAttribute('aria-label', (LABELS() || [])[optIdx] || '');
      if (sel === score) btn.classList.add('is-selected');
      btn.addEventListener('click', function () { selectOption(optIdx); });
      likert.appendChild(btn);
    });
    el.qOptions.appendChild(likert);


    // 戻るボタン
    var canBack = i > 0;
    if (el.qBackBottom) el.qBackBottom.classList.toggle('hidden', !canBack);

    // 次へボタン
    var canGoNext = i < state.maxReachedIndex && i < questions.length - 1;
    el.qNext.classList.toggle('hidden', !canGoNext);

    // コンパニオンメッセージ
    var msgEl = document.getElementById('companionMsg');
    if (msgEl) {
      var remaining = total - (i + 1);
      if (remaining > 0) {
        msgEl.innerHTML = 'あと <b>' + remaining + '問</b>！ ゆっくりでいいよ〜';
      } else {
        msgEl.textContent = 'すべて回答完了！ 診断できるよ〜';
      }
    }
  }

  var advanceTimer = null;

  function selectOption(optionIndex) {
    if (advanceTimer) clearTimeout(advanceTimer);
    var questions = SQ();
    var i = state.quizIndex;
    var score = optionIndexToScore(optionIndex);
    state.answers[i] = score;

    // 選択状態を即反映
    var opts = el.qOptions.querySelectorAll('.likert__opt');
    var OPT_IDX = [5, 4, 3, 2, 1, 0];
    opts.forEach(function (btn, vi) {
      btn.classList.toggle('is-selected', OPT_IDX[vi] === optionIndex);
    });

    var last = i === questions.length - 1;
    state.maxReachedIndex = Math.max(state.maxReachedIndex, i + 1);
    persistQuizProgress();

    if (last) {
      setTimeout(function () { el.diagnoseDialog.hidden = false; }, 150);
      return;
    }
    advanceTimer = setTimeout(function () {
      state.animFwd = true;
      state.quizIndex++;
      persistQuizProgress();
      updateQuizUI();
    }, 420);
  }

  // ── 結果表示 ────────────────────────────────────────────────────────────────
  function showResult(code, sums, opts) {
    var t = TYPES()[code];
    var c = CHARS()[code];
    if (!t) return;
    opts = opts || {};

    // ヒーローセクション
    var heroEl = document.getElementById('resultHero');
    if (heroEl && c) {
      heroEl.style.setProperty('--char-tint', safeCssColor(c.tint, '#FFE9C2'));
    }

    var heroCharEl  = document.getElementById('heroChar');
    var heroTitleEl = document.getElementById('heroTitle');
    var heroNameEl  = document.getElementById('heroName');
    var heroCodeEl  = document.getElementById('heroCode');
    var heroCatchEl = document.getElementById('heroCatch');

    if (heroCharEl  && c) heroCharEl.innerHTML    = charImgFullHtml(code);
    if (heroTitleEl)      heroTitleEl.textContent = t.concept_title || '';
    if (heroNameEl)       heroNameEl.textContent  = t.type_name;
    if (heroCodeEl)       heroCodeEl.textContent  = code;
    if (heroCatchEl)      heroCatchEl.textContent = t.tagline;

    // セクション
    var axisHtml = opts.skipAxisBars ? buildAxisBarsSamplePlaceholderHtml() : buildAxisBarsHtml(sums);

    el.resultSections.innerHTML = buildTypeSections(t, axisHtml);

    // バーのアニメーション（少し遅延してwidth適用／サンプル表示時も同一）
    requestAnimationFrame(function () {
      requestAnimationFrame(function () {
        el.resultSections.querySelectorAll('.axis-row__fill').forEach(function (fill) {
          var w = fill.style.width;
          fill.style.width = '0%';
          requestAnimationFrame(function () {
            fill.style.width = w;
          });
        });
      });
    });
  }

  function selectSecretCompatibilityPartner(root, partnerCode) {
    if (!root || !partnerCode) return;
    var myCode = root.getAttribute('data-my-code') || state.lastCode;
    var result = root.querySelector('#secretCompatibilityResult');
    if (!result) return;
    root.querySelectorAll('[data-secret-compat-code]').forEach(function (btn) {
      btn.classList.toggle('is-active', btn.getAttribute('data-secret-compat-code') === partnerCode);
    });
    result.innerHTML = buildSecretCompatibilityDetailHtml(myCode, partnerCode);
  }

  function renderSecretCompatibilityScreen(code) {
    if (!el.secretCompatPageBody || !code || !TYPES()[code]) return false;
    if (!isSecretCompatibilityUnlocked()) return false;
    state.lastCode = code;
    el.secretCompatPageBody.innerHTML = buildSecretCompatibilityPageHtml(code);
    var root = el.secretCompatPageBody.querySelector('[data-secret-compat-root]');
    if (!root) return true;
    var firstRecommended = null;
    var myType = TYPES()[code];
    if (myType && myType.compatible_types && myType.compatible_types.good && myType.compatible_types.good[0]) {
      firstRecommended = myType.compatible_types.good[0].code;
    }
    selectSecretCompatibilityPartner(root, firstRecommended || ORDER().filter(function (otherCode) { return otherCode !== code; })[0]);
    return true;
  }

  function goSecretCompatibility(code) {
    if (!code || !TYPES()[code]) return;
    saveCurrentScrollPosition();
    setHash('/secret-compat/' + code);
    applyRoute();
  }

  function scrollResultToSecretCompatibility() {
    requestAnimationFrame(function () {
      var node = document.getElementById('secretCompatibility');
      if (node && node.scrollIntoView) {
        node.scrollIntoView({ block:'start' });
      }
    });
  }

  function goSecretCompatibilityBack() {
    var code = state.lastCode;
    if (code && TYPES()[code]) {
      setHash('/result/' + code);
      applyRoute();
      scrollResultToSecretCompatibility();
      return;
    }
    setHash('/');
    applyRoute();
  }

  function refreshSecretCompatibilityUnlock() {
    if (!el.resultSections || !state.lastCode || !TYPES()[state.lastCode]) return;
    if (!isSecretCompatibilityUnlocked()) return;
    if (document.getElementById('secretCompatibility')) return;
    var wrapper = document.createElement('div');
    wrapper.innerHTML = buildSecretCompatibilityCtaHtml(state.lastCode);
    if (wrapper.firstElementChild) el.resultSections.appendChild(wrapper.firstElementChild);
  }

  // ── ウェルカム画面初期化 ─────────────────────────────────────────────────────
  var stripOrder = null;

  function getStripOrder() {
    if (!stripOrder) stripOrder = shuffleArray(ORDER().slice());
    return stripOrder;
  }

  function fillMarqueeTrack(stripEl) {
    if (!stripEl) return;
    stripEl.innerHTML = '';
    var codes = getStripOrder();
    var doubled = codes.concat(codes);
    doubled.forEach(function (code) {
      var t = TYPES()[code];
      var c = CHARS()[code];
      if (!t || !c) return;
      var div = document.createElement('div');
      div.className = 'thumb';
      div.style.background = safeCssColor(c.tint, '#FFE9C2');
      div.title = code + ' ' + t.type_name;
      div.innerHTML = isTypeUnlocked(code) ? charImgFullHtml(code) : charImgHtml(code);
      stripEl.appendChild(div);
    });
  }

  function refreshCatalogPreviews() {
    renderTypesGrid();
    fillMarqueeTrack(document.getElementById('strip-track'));
    fillMarqueeTrack(document.getElementById('strip-track-result'));
  }

  function initWelcomeScreen() {
    // フローティングキャラクター
    document.querySelectorAll('.float[data-code]').forEach(function (el_) {
      var code = el_.dataset.code;
      var c = CHARS()[code];
      if (c && c.tint) el_.style.background = safeCssColor(c.tint, '#FFE9C2');
      el_.innerHTML = charImgFullHtml(code);
    });

    fillMarqueeTrack(document.getElementById('strip-track'));
    fillMarqueeTrack(document.getElementById('strip-track-result'));
  }

  // ── クイズ画面初期化 ─────────────────────────────────────────────────────────
  function initQuizChar() {
    // コンパニオンキャラ (ハムスター固定)
    var charEl = document.getElementById('companionChar');
    if (charEl) {
      charEl.style.background = '#FFF6CB';
      charEl.innerHTML = charImgHtml('SPAC');
    }
    // 質問カードのキャラ (ナマケモノ固定)
    var quizChar = document.getElementById('quizChar');
    if (quizChar) {
      quizChar.innerHTML = charImgHtml('SFAC');
    }
  }

  // ── ルーティング ──────────────────────────────────────────────────────────────
  function startQuiz() {
    clearQuizProgressStorage();
    state.shuffledQuestions = shuffleArray(Q().slice());
    state.quizIndex = 0;
    state.answers   = new Array(state.shuffledQuestions.length).fill(null);
    state.animFwd   = true;
    state.maxReachedIndex = 0;
    setHash('/quiz');
    showScreen('quiz');
    updateQuizUI();
    persistQuizProgress();
  }

  function applyRoute() {
    var r = parseHash();
    el.typeModal.classList.remove('is-open');
    el.typeModal.hidden = true;
    if (r.view !== 'typeDetail') unlockPageScroll();

    if (r.view === 'welcome')    { showScreen('welcome'); return; }
    if (r.view === 'types')      { showScreen('types', { preserveScroll: state.screen === 'types' }); return; }
    if (r.view === 'typeDetail') {
      showScreen('types', { preserveScroll: state.screen === 'types' });
      if (TYPES()[r.code]) renderTypeModal(r.code);
      return;
    }
    if (r.view === 'secretCompat') {
      if (renderSecretCompatibilityScreen(r.code)) {
        showScreen('secretCompat');
        return;
      }
      if (r.code && TYPES()[r.code]) {
        state.lastCode = r.code;
        setHash('/result/' + r.code);
        applyRoute();
      } else {
        setHash('/');
        showScreen('welcome');
      }
      return;
    }
    if (r.view === 'quiz') {
      var restored = hydrateQuizProgressFromStorage();
      if (!restored) {
        var baseLen = Q().length;
        if (
          state.shuffledQuestions.length !== baseLen ||
          state.answers.length !== baseLen ||
          state.answers.every(function (x) { return x == null; })
        ) {
          startQuiz();
          return;
        }
      }
      showScreen('quiz');
      updateQuizUI();
      return;
    }
    if (r.view === 'result') {
      var fromSecretCompat = state.screen === 'secretCompat';
      if (r.code && TYPES()[r.code]) {
        var hasFresh =
          state.lastCode === r.code &&
          state.lastScores &&
          isValidStoredSums(state.lastScores) &&
          state.answers.length === SQ().length &&
          state.answers.every(function (x) { return x !== null && x !== undefined; });
        var hasHydratedScores =
          !hasFresh &&
          state.lastScores &&
          isValidStoredSums(state.lastScores) &&
          state.lastCode === r.code;
        var showRealScores = hasFresh || hasHydratedScores;
        var sums = showRealScores
          ? state.lastScores
          : { social:0, structure:0, resilience:0, intensity:0 };
        showResult(r.code, sums, { skipAxisBars: !showRealScores });
        state.lastCode = r.code;
        if (!showRealScores) {
          state.lastScores = null;
        }
        showScreen('result');
        if (fromSecretCompat) scrollResultToSecretCompatibility();
      } else if (state.lastCode && state.lastScores && TYPES()[state.lastCode]) {
        showResult(state.lastCode, state.lastScores, {});
        showScreen('result');
        if (fromSecretCompat) scrollResultToSecretCompatibility();
      } else {
        setHash('/');
        showScreen('welcome');
      }
    }
  }

  function finishQuiz() {
    var code = resolveTypeCode(state.answers);
    var data = computeAxisData(SQ(), state.answers);
    state.lastCode   = code;
    state.lastScores = data.sums;
    unlockType(code);
    clearQuizProgressStorage();
    persistSavedResult();
    setHash('/result/' + code);
    applyRoute();
  }

  function goWelcome() {
    state.typesReturnParent = 'welcome';
    persistTypesReturnParent();
    setHash('/');
    showScreen('welcome');
  }

  /** @param {'welcome'|'result'} parent */
  function openTypesList(parent) {
    state.typesReturnParent = parent === 'result' ? 'result' : 'welcome';
    persistTypesReturnParent();
    if (state.typesReturnParent === 'result' && state.lastCode) unlockType(state.lastCode);
    renderTypesGrid();
    setHash('/types');
    applyRoute();
  }

  function goTypesBack() {
    if (state.typesReturnParent === 'result' && state.lastCode && TYPES()[state.lastCode]) {
      setHash('/result/' + state.lastCode);
    } else {
      setHash('/');
    }
    applyRoute();
  }

  // ── イベントリスナー ─────────────────────────────────────────────────────────

  // ウェルカム
  document.getElementById('headerBrand').addEventListener('click', goWelcome);
  document.getElementById('btnStartQuiz').addEventListener('click', startQuiz);

  var welcomeStrip = document.getElementById('welcomeStrip');
  if (welcomeStrip) {
    welcomeStrip.addEventListener('click', function () {
      openTypesList('welcome');
    });
    welcomeStrip.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        openTypesList('welcome');
      }
    });
  }

  var resultStrip = document.getElementById('resultStrip');
  if (resultStrip) {
    resultStrip.addEventListener('click', function () {
      openTypesList('result');
    });
    resultStrip.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        openTypesList('result');
      }
    });
  }

  // タイプ一覧
  document.getElementById('typesBack').addEventListener('click', goTypesBack);
  document.getElementById('typesGoTop').addEventListener('click', goWelcome);

  // クイズ
  if (el.qBackBottom) {
    el.qBackBottom.addEventListener('click', function () {
      if (advanceTimer) clearTimeout(advanceTimer);
      if (state.quizIndex <= 0) return;
      state.animFwd = false;
      state.quizIndex--;
      persistQuizProgress();
      updateQuizUI();
    });
  }
  el.qNext.addEventListener('click', function () {
    var questions = SQ();
    if (state.quizIndex >= questions.length - 1) return;
    state.animFwd = true;
    state.quizIndex++;
    persistQuizProgress();
    updateQuizUI();
  });
  document.getElementById('quizClose').addEventListener('click', function () {
    if (state.screen === 'quiz') { el.quitDialog.hidden = false; }
  });

  // 診断確認
  document.getElementById('diagnoseConfirm').addEventListener('click', function () {
    el.diagnoseDialog.hidden = true;
    finishQuiz();
  });
  document.getElementById('diagnoseCancel').addEventListener('click', function () {
    el.diagnoseDialog.hidden = true;
  });
  el.diagnoseDialog.addEventListener('click', function (e) {
    if (e.target === el.diagnoseDialog) el.diagnoseDialog.hidden = true;
  });

  // 中断確認
  document.getElementById('quitConfirm').addEventListener('click', function () {
    el.quitDialog.hidden = true;
    clearQuizProgressStorage();
    resetQuizMemoryState();
    goWelcome();
  });
  document.getElementById('quitCancel').addEventListener('click', function () {
    el.quitDialog.hidden = true;
  });
  el.quitDialog.addEventListener('click', function (e) {
    if (e.target === el.quitDialog) el.quitDialog.hidden = true;
  });

  var BTN_SAVE_RESULT_DEFAULT = '診断結果を画像で保存';
  var saveResultImageButton = document.getElementById('btnSaveResultImage');
  if (saveResultImageButton) {
    saveResultImageButton.addEventListener('click', function () {
      var btn = document.getElementById('btnSaveResultImage');
      if (!btn) return;
      if (!canSaveResultStoryImage()) {
        window.alert(
          '診断完了後のみ、結果画像を保存できます。図鑑から開いている結果は見本のため保存できません。'
        );
        return;
      }
      var restore = btn.textContent || BTN_SAVE_RESULT_DEFAULT;
      btn.disabled = true;
      btn.textContent = '画像を作成中…';
      var pref = typeof document.fonts !== 'undefined' && document.fonts.ready
        ? document.fonts.ready
        : Promise.resolve();
      pref
        .then(function () {
          return exerciseResultStoryToBlob(state.lastCode, state.lastScores);
        })
        .then(function (blob) {
          try {
            return saveBlobAsPng(blob, buildResultPngFilename(state.lastCode));
          } catch (_e) {
            window.alert('画像の保存を開始できませんでした（Safari は写真アプリへの保存などをご検討ください）。');
          }
        })
        .catch(function () {
          window.alert('画像の作成に失敗しました。時間をおいて再度お試しください。');
        })
        .finally(function () {
          btn.disabled = false;
          btn.textContent = BTN_SAVE_RESULT_DEFAULT;
        });
    });
  }

  // 結果からトップへ：保存済み4軸がある場合は確認
  function promptResultDiscardThenWelcome() {
    if (state.lastCode && state.lastScores && isValidStoredSums(state.lastScores)) {
      if (el.resultDiscardDialog) el.resultDiscardDialog.hidden = false;
      else goWelcome();
    } else {
      goWelcome();
    }
  }

  document.getElementById('resultBrand').addEventListener('click', promptResultDiscardThenWelcome);
  document.getElementById('resultGoTop').addEventListener('click', function () {
    try {
      window.scrollTo({ top: 0, left: 0, behavior: 'smooth' });
    } catch (_e) {
      window.scrollTo(0, 0);
    }
  });
  el.resultSections.addEventListener('click', function (e) {
    var target = e.target && e.target.closest ? e.target : null;
    if (!target) return;
    var root = target.closest('#secretCompatibility');
    if (root) {
      goSecretCompatibility(root.getAttribute('data-my-code'));
    }
  });
  el.resultSections.addEventListener('keydown', function (e) {
    if (e.key !== 'Enter' && e.key !== ' ') return;
    var target = e.target && e.target.closest ? e.target : null;
    if (!target) return;
    var root = target.closest('#secretCompatibility');
    if (!root) return;
    e.preventDefault();
    goSecretCompatibility(root.getAttribute('data-my-code'));
  });

  document.getElementById('secretCompatBack').addEventListener('click', goSecretCompatibilityBack);
  el.secretCompatPageBody.addEventListener('click', function (e) {
    var target = e.target && e.target.closest ? e.target : null;
    if (!target) return;
    var partnerBtn = target.closest('[data-secret-compat-code]');
    if (!partnerBtn) return;
    selectSecretCompatibilityPartner(
      partnerBtn.closest('[data-secret-compat-root]'),
      partnerBtn.getAttribute('data-secret-compat-code')
    );
  });
  if (el.resultDiscardDialog) {
    document.getElementById('resultDiscardConfirm').addEventListener('click', function () {
      el.resultDiscardDialog.hidden = true;
      clearSavedResultStorage();
      state.lastCode = null;
      state.lastScores = null;
      goWelcome();
    });
    document.getElementById('resultDiscardCancel').addEventListener('click', function () {
      el.resultDiscardDialog.hidden = true;
    });
    el.resultDiscardDialog.addEventListener('click', function (e) {
      if (e.target === el.resultDiscardDialog) el.resultDiscardDialog.hidden = true;
    });
  }

  function buildShareUrl() {
    var code = state.lastCode || '';
    if (code && TYPES()[code]) {
      return window.location.origin + window.location.pathname + '#/result/' + encodeURIComponent(code);
    }
    return window.location.origin + window.location.pathname;
  }

  function setShareButtonBusy(btn, label) {
    if (!btn) return function () {};
    var oldText = btn.textContent;
    var oldDisabled = btn.disabled;
    btn.disabled = true;
    btn.textContent = label;
    return function () {
      btn.disabled = oldDisabled;
      btn.textContent = oldText;
    };
  }

  function createResultImageBlob() {
    var pref = typeof document.fonts !== 'undefined' && document.fonts.ready
      ? document.fonts.ready
      : Promise.resolve();
    return pref.then(function () {
      return exerciseResultStoryToBlob(state.lastCode, state.lastScores);
    });
  }

  var currentShareChannel = 'instagram';
  var SHARE_CHANNELS = {
    instagram: { label:'Instagram', openText:'Instagramを開いて、画像を投稿する' },
    x: { label:'X', openText:'Xを開いて、画像をポストする' },
    line: { label:'LINE', openText:'LINEを開いて、画像を送信する' },
  };
  var SHARE_CELEBRATION_MESSAGES = {
    1: '仲間たちが喜ぶ！！',
    2: '仲間たちが震えて喜ぶ！！',
    3: '仲間たちのボスになる！？',
  };

  function normalizeShareTier(v) {
    var n = parseInt(v, 10);
    if (n >= 1 && n <= 3) return n;
    return null;
  }

  function emptyShareProgress() {
    return {
      tiers: { instagram:null, x:null, line:null },
      total: 0,
    };
  }

  function finalizeShareProgress(progress) {
    var p = progress || emptyShareProgress();
    var normalized = emptyShareProgress();

    var used = {};
    Object.keys(SHARE_CHANNELS).forEach(function (ch) {
      var t = normalizeShareTier(p.tiers && p.tiers[ch]);
      normalized.tiers[ch] = t;
      if (t != null) used[t] = true;
    });

    // 旧仕様の「全完了=4」保存済みデータは、今後4を表示しないため1〜3へ割り戻す。
    Object.keys(SHARE_CHANNELS).forEach(function (ch) {
      if (normalized.tiers[ch] != null) return;
      var rawTier = parseInt(p.tiers && p.tiers[ch], 10);
      if (rawTier !== 4) return;
      var next = null;
      [1, 2, 3].some(function (rank) {
        if (used[rank]) return false;
        next = rank;
        return true;
      });
      if (next == null) next = 3;
      normalized.tiers[ch] = next;
      used[next] = true;
    });

    var rawTotal = parseInt(p.total, 10);
    var distinctTotal = Object.keys(used).length;
    normalized.total = Number.isFinite(rawTotal)
      ? Math.max(0, rawTotal, distinctTotal)
      : distinctTotal;

    return normalized;
  }

  function loadShareProgress() {
    var empty = emptyShareProgress();
    try {
      var raw = storageGet('local', STORAGE_KEY_SHARE_PROGRESS);
      var rawSource = raw ? 'local' : null;
      if (!raw) {
        raw = storageGet('session', STORAGE_KEY_SHARE_PROGRESS);
        if (raw) rawSource = 'session';
      }
      if (!raw) {
        raw = storageGet('session', STORAGE_KEY_SHARE_CHANNELS_LEGACY);
        if (!raw) return empty;
        var legacy = parseStoredJson(raw, null);
        if (!Array.isArray(legacy)) return empty;
        var legacyOrder = [];
        legacy.forEach(function (ch) {
          if (!SHARE_CHANNELS[ch]) return;
          if (legacyOrder.indexOf(ch) === -1) legacyOrder.push(ch);
        });
        var out = JSON.parse(JSON.stringify(empty));
        legacyOrder.forEach(function (ch, i) {
          out.tiers[ch] = Math.min(i + 1, 3);
        });
        out.total = legacyOrder.length;
        out = finalizeShareProgress(out);
        if (persistShareProgress(out)) {
          storageRemove('session', STORAGE_KEY_SHARE_CHANNELS_LEGACY);
        }
        return out;
      }
      var data = parseStoredJson(raw, null);
      if (!data || typeof data !== 'object') return empty;

      /** v1: milestones 形式 → tiers へ */
      if (data.milestones) {
        var mig = { tiers:{ instagram:null, x:null, line:null } };

        ['instagram', 'x', 'line'].forEach(function (k) {
          var m = data.milestones[k];
          var t = null;
          if (typeof m === 'number') t = normalizeShareTier(m);
          else if (typeof m === 'string') {
            var ii;
            for (ii = 1; ii <= 3; ii += 1) {
              if (m === SHARE_CELEBRATION_MESSAGES[ii]) t = ii;
            }
          }
          mig.tiers[k] = t;
        });
        mig.total = data.total;

        mig = finalizeShareProgress(mig);
        if (persistShareProgress(mig) && rawSource === 'session') {
          storageRemove('session', STORAGE_KEY_SHARE_PROGRESS);
        }
        return mig;
      }

      if (!data.tiers) return empty;

      var finalProgress = finalizeShareProgress({
        tiers: {
          instagram: data.tiers.instagram,
          x: data.tiers.x,
          line: data.tiers.line,
        },
        total: data.total,
      });
      if (rawSource === 'session') persistShareProgress(finalProgress);
      return finalProgress;
    } catch (_e) {
      return empty;
    }
  }

  function persistShareProgress(progress) {
    var normalized = finalizeShareProgress(progress);
    var saved = storageSet('local', STORAGE_KEY_SHARE_PROGRESS, JSON.stringify(normalized));
    /** 旧実装の残骸が残ると復元優先順位が曖昧になるので掃除 */
    if (saved) {
      storageRemove('session', STORAGE_KEY_SHARE_PROGRESS);
      storageRemove('session', STORAGE_KEY_SHARE_CHANNELS_LEGACY);
    }
    return saved;
  }

  function getShareDisplayTier(channel, p) {
    var tier = getLockedShareTier(channel, p);
    if (tier != null) return tier;
    return Math.min(countDistinctShareTiers(p) + 1, 3);
  }

  function getShareActionMode(channel) {
    var p = loadShareProgress();
    return !getLockedShareTier(channel, p) && countDistinctShareTiers(p) === 0 ? 'initial' : 'promise';
  }

  function setShareDialogActionButton(mode) {
    var primary = document.getElementById('instagramSaveImage');
    var secondary = document.getElementById('instagramShareClose');
    var isInitial = mode === 'initial';
    if (primary) {
      primary.textContent = isInitial ? '画像を保存する' : 'シェアを約束する';
      primary.classList.add('is-promise');
      primary.classList.remove('is-save');
    }
    if (secondary) {
      secondary.textContent = isInitial ? '閉じる' : '画像を保存する';
      secondary.classList.add('btn--secondary');
      secondary.classList.remove('btn--share-save');
      secondary.classList.remove('is-save');
      secondary.classList.remove('is-promise');
    }
  }

  function openShareSaveDialog(channel) {
    if (!canSaveResultStoryImage()) {
      window.alert('診断完了後のみシェア用の結果画像を作成できます。');
      return;
    }
    currentShareChannel = SHARE_CHANNELS[channel] ? channel : 'instagram';
    var dialog = document.getElementById('instagramShareDialog');
    var cfg = SHARE_CHANNELS[currentShareChannel];
    var title = document.getElementById('shareDialogTitle');
    var saveStep = document.getElementById('shareStepSave');
    var openStep = document.getElementById('shareStepOpen');
    var highlightStep = document.getElementById('shareStepHighlight');
    var actionMode = getShareActionMode(currentShareChannel);
    if (title) title.textContent = cfg.label + 'でシェア';
    if (saveStep) saveStep.textContent = actionMode === 'initial'
      ? '「画像を保存する」で結果画像を保存'
      : '「シェアを約束する」で誓いを立てる';
    if (openStep) openStep.textContent = cfg.openText;
    if (highlightStep) highlightStep.textContent = getShareStepHighlight(currentShareChannel);
    setShareDialogActionButton(actionMode);
    var dismissBtn = document.getElementById('instagramShareDismiss');
    if (dismissBtn) dismissBtn.hidden = actionMode === 'initial';
    if (dialog) dialog.hidden = false;
  }

  function closeShareSaveDialog() {
    var dialog = document.getElementById('instagramShareDialog');
    if (dialog) dialog.hidden = true;
  }

  function showAnimalCelebration(variant) {
    var old = document.getElementById('animalCelebration');
    if (old && old.parentNode) old.parentNode.removeChild(old);

    var root = document.createElement('div');
    root.id = 'animalCelebration';
    root.className = 'animal-celebration';
    root.dataset.variant = String(variant || 1);
    root.setAttribute('aria-live', 'polite');

    var celebrationVariant = normalizeShareTier(variant) || 1;

    // 固定配色・フォント・サイズ・回転（"絶対にシェアしてネ" 各9文字）
    var RANSOM_FIXED = [
      { ch: '絶', bg: '#8B0000', color: '#fff',    font: '"Impact", "Arial Black", sans-serif',             size: 30, rot: -15, cy: -5  },
      { ch: '対', bg: '#1a1a1a', color: '#FFD63F', font: '"Times New Roman", "Georgia", serif',             size: 24, rot:   8, cy:  7  },
      { ch: 'に', bg: '#fff',    color: '#1a1a1a', font: '"Courier New", "Courier", monospace',             size: 22, rot:  -5, cy: -3  },
      { ch: 'シ', bg: '#003366', color: '#fff',    font: '"Comic Sans MS", "Chalkboard SE", cursive',       size: 27, rot:  17, cy:  9  },
      { ch: 'ェ', bg: '#FFD63F', color: '#1a1a1a', font: '"Hiragino Mincho ProN", "Yu Mincho", serif',      size: 20, rot: -12, cy: -8  },
      { ch: 'ア', bg: '#8B0000', color: '#fff',    font: '"Arial Black", "Helvetica Neue", sans-serif',     size: 29, rot:   6, cy:  4  },
      { ch: 'し', bg: '#E8E8E8', color: '#003366', font: '"Georgia", serif',                                size: 23, rot: -18, cy: -6  },
      { ch: 'て', bg: '#FFF9E6', color: '#8B0000', font: '"Trebuchet MS", sans-serif',                      size: 26, rot:  11, cy:  8  },
      { ch: 'ネ', bg: '#FFE4E4', color: '#cc0000', font: '"Impact", "Arial Black", sans-serif',             size: 28, rot:  -8, cy: -4  },
    ];
    var RANSOM_VARIANT_TWO = [
      { ch: '君', bg: '#1a1a1a', color: '#FFD63F', font: '"Impact", "Arial Black", sans-serif',             size: 29, rot: -12, cy: -5 },
      { ch: 'は', bg: '#fff',    color: '#8B0000', font: '"Hiragino Mincho ProN", "Yu Mincho", serif',      size: 23, rot:   9, cy:  6 },
      { ch: '本', bg: '#003366', color: '#fff',    font: '"Arial Black", "Helvetica Neue", sans-serif',     size: 28, rot:  -5, cy: -2 },
      { ch: '当', bg: '#FFD63F', color: '#1a1a1a', font: '"Times New Roman", "Georgia", serif',             size: 25, rot:  14, cy:  8 },
      { ch: 'に', bg: '#E8E8E8', color: '#003366', font: '"Courier New", "Courier", monospace',             size: 22, rot: -16, cy: -7 },
      { ch: '仲', bg: '#8B0000', color: '#fff',    font: '"Impact", "Arial Black", sans-serif',             size: 30, rot:   7, cy:  3 },
      { ch: '間', bg: '#FFF9E6', color: '#8B0000', font: '"Trebuchet MS", sans-serif',                      size: 28, rot: -10, cy: -4 },
      { ch: '！', bg: '#FFE4E4', color: '#cc0000', font: '"Arial Black", "Helvetica Neue", sans-serif',     size: 29, rot:  12, cy:  7 },
      { ch: '？', bg: '#1a1a1a', color: '#fff',    font: '"Comic Sans MS", "Chalkboard SE", cursive',       size: 30, rot:  -8, cy: -3 },
    ];
    var RANSOM_VARIANT_THREE = [
      { ch: '君', bg: '#FFD23F', color: '#2B2535', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 28, rot: -8, cy: -4 },
      { ch: 'は', bg: '#FFFFFF', color: '#FF4D5A', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 24, rot:  6, cy:  5 },
      { ch: '僕', bg: '#D8F5DD', color: '#2B2535', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 29, rot: -4, cy: -2 },
      { ch: 'た', bg: '#FFE2EF', color: '#FF4D5A', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 25, rot: 10, cy:  7 },
      { ch: 'ち', bg: '#DDF1FF', color: '#2B2535', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 25, rot: -11, cy: -6 },
      { ch: 'の', bg: '#FFFFFF', color: '#4A8DFF', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 23, rot:  5, cy:  4 },
      { ch: 'ボ', bg: '#FFD23F', color: '#2B2535', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 30, rot: -7, cy: -3 },
      { ch: 'ス', bg: '#FF4D5A', color: '#FFFFFF', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 30, rot:  8, cy:  6 },
      { ch: 'だ', bg: '#FFFFFF', color: '#2B2535', font: '"Zen Maru Gothic", system-ui, sans-serif', size: 27, rot: -5, cy: -4 },
    ];

    var message = document.createElement('div');
    message.className = 'animal-celebration__message';
    var ransomLetters = celebrationVariant === 3
      ? RANSOM_VARIANT_THREE
      : (celebrationVariant === 2 ? RANSOM_VARIANT_TWO : RANSOM_FIXED);
    var messageDelayBase = celebrationVariant === 2 ? 1.05 : (celebrationVariant === 3 ? 0.75 : 0);
    ransomLetters.forEach(function (def, idx) {
      var sp = document.createElement('span');
      sp.textContent = def.ch;
      sp.className = celebrationVariant === 3 ? 'ransom-char ransom-char--boss' : 'ransom-char';
      sp.style.fontFamily = def.font;
      sp.style.fontSize = def.size + 'px';
      sp.style.color = def.color;
      sp.style.backgroundColor = def.bg;
      sp.style.setProperty('--cr', def.rot + 'deg');
      sp.style.setProperty('--cy', def.cy + 'px');
      sp.style.setProperty('--char-delay', (messageDelayBase + idx * 0.15).toFixed(3) + 's');
      message.appendChild(sp);
    });
    root.appendChild(message);

    if (state.lastCode && CHARS()[state.lastCode]) {
      var center = document.createElement('div');
      center.className = 'animal-celebration__animal animal-celebration__animal--main';
      center.innerHTML = charImgFullHtml(state.lastCode);
      root.appendChild(center);
    }

    var positions = [
      ['14vw', '20vh'], ['34vw', '16vh'], ['66vw', '16vh'], ['86vw', '20vh'],
      ['10vw', '40vh'], ['27vw', '34vh'], ['73vw', '34vh'], ['90vw', '40vh'],
      ['13vw', '62vh'], ['31vw', '70vh'], ['69vw', '70vh'], ['87vw', '62vh'],
      ['22vw', '84vh'], ['50vw', '86vh'], ['78vw', '84vh'],
    ];
    var codes = shuffleArray(ORDER().filter(function (code) { return code !== state.lastCode; }));
    codes.forEach(function (code, idx) {
      var pos = positions[idx % positions.length];
      var item = document.createElement('div');
      item.className = 'animal-celebration__animal';
      item.style.setProperty('--x', pos[0]);
      item.style.setProperty('--y', pos[1]);
      item.style.setProperty('--rot', Math.round(-18 + Math.random() * 36) + 'deg');
      item.style.setProperty('--rot-pop', Math.round(-10 + Math.random() * 20) + 'deg');
      item.style.setProperty('--delay', (idx * 0.09).toFixed(3) + 's');
      item.innerHTML = charImgFullHtml(code);
      root.appendChild(item);
    });

    document.body.appendChild(root);
    // キャラ・文字が約3秒で出そろった後、維持してまとめてフェードアウト。
    var leaveDelay = celebrationVariant === 3 ? 6500 : 4500;
    var removeDelay = celebrationVariant === 3 ? 7300 : 5300;
    setTimeout(function () {
      root.classList.add('is-leaving');
    }, leaveDelay);
    setTimeout(function () {
      if (root.parentNode) root.parentNode.removeChild(root);
    }, removeDelay);
  }

  function copyShareUrlOnly() {
    var url = buildShareUrl();
    if (navigator.clipboard && navigator.clipboard.writeText) {
      return navigator.clipboard.writeText(url).catch(function () {});
    }
    return Promise.resolve();
  }

  /** 達成済みの「順位」(1〜3 のみ)。未達成/null */
  function getLockedShareTier(channel, p) {
    var n = normalizeShareTier(p && p.tiers ? p.tiers[channel] : null);
    if (!n || n > 3) return null;
    return n;
  }

  /** 順位プレビュー用: 現在埋まっている distinct 順位数 */
  function countDistinctShareTiers(p) {
    var seen = {};
    Object.keys(SHARE_CHANNELS).forEach(function (k) {
      var t = getLockedShareTier(k, p);
      if (t != null) seen[t] = true;
    });
    return Object.keys(seen).length;
  }

  function getShareCompletionCount(p) {
    var progress = finalizeShareProgress(p);
    return Math.max(progress.total || 0, countDistinctShareTiers(progress));
  }

  /** モーダル3行目: 初回ユニーク成功で順位が確定して固定され、未達成は現在の順位プレビュー。 */
  function getShareStepHighlight(channel) {
    var p = loadShareProgress();
    var tier = getLockedShareTier(channel, p);
    if (tier != null) return SHARE_CELEBRATION_MESSAGES[tier];
    var k = Math.min(countDistinctShareTiers(p) + 1, 3);
    return SHARE_CELEBRATION_MESSAGES[k];
  }

  /** 保存成功時にユニーク順位へ割当。1〜3の状態を各媒体ごとに固定し続ける。 */
  function recordShareDownloadSuccess(channel) {
    var p = loadShareProgress();
    p.total = getShareCompletionCount(p) + 1;

    if (!getLockedShareTier(channel, p)) {
      var next = Math.min(countDistinctShareTiers(p) + 1, 3);
      p.tiers[channel] = next;
      persistShareProgress(p);
      return Math.min(next, 3);
    }

    persistShareProgress(p);
    var cur = normalizeShareTier(p.tiers[channel]);
    return Math.min(Math.max(cur || 3, 1), 3);
  }

  function saveShareImageFromDialog(btn, opts) {
    if (!canSaveResultStoryImage()) {
      window.alert('診断完了後のみシェア用の結果画像を保存できます。');
      return;
    }
    var options = opts || {};
    var shouldRecord = options.record !== false;
    var shouldClose = options.close !== false;
    var restore = setShareButtonBusy(btn, '保存中…');
    createResultImageBlob()
      .then(function (blob) {
        return saveBlobAsPng(blob, buildResultPngFilename(state.lastCode));
      })
      .then(function (saved) {
        if (saved === false) return;
        if (!shouldRecord) return;
        return copyShareUrlOnly().then(function () {
          var variant = recordShareDownloadSuccess(currentShareChannel);
          if (shouldClose) closeShareSaveDialog();
          refreshSecretCompatibilityUnlock();
          showAnimalCelebration(variant);
        });
      })
      .catch(function () {
        window.alert('シェア用の画像保存に失敗しました。時間をおいて再度お試しください。');
      })
      .finally(restore);
  }

  function promiseShareFromDialog(btn) {
    var restore = setShareButtonBusy(btn, '約束中…');
    copyShareUrlOnly()
      .then(function () {
        var variant = recordShareDownloadSuccess(currentShareChannel);
        closeShareSaveDialog();
        refreshSecretCompatibilityUnlock();
        showAnimalCelebration(variant);
      })
      .finally(restore);
  }

  function handlePrimaryShareAction() {
    var btn = document.getElementById('instagramSaveImage');
    if (getShareActionMode(currentShareChannel) === 'initial') {
      saveShareImageFromDialog(btn, { record:true, close:true });
      return;
    }
    promiseShareFromDialog(btn);
  }

  function handleSecondaryShareAction() {
    if (getShareActionMode(currentShareChannel) === 'initial') {
      closeShareSaveDialog();
      return;
    }
    saveShareImageFromDialog(document.getElementById('instagramShareClose'), { record:true, close:true });
  }

  // 各SNS: 投稿用画像の保存手順をモーダルで案内する。
  document.getElementById('btnShareInstagram').addEventListener('click', function () {
    openShareSaveDialog('instagram');
  });
  document.getElementById('btnShareX').addEventListener('click', function () {
    openShareSaveDialog('x');
  });
  document.getElementById('btnShareLine').addEventListener('click', function () {
    openShareSaveDialog('line');
  });

  document.getElementById('instagramSaveImage').addEventListener('click', function () {
    handlePrimaryShareAction();
  });
  document.getElementById('instagramShareClose').addEventListener('click', handleSecondaryShareAction);
  var instagramShareDismiss = document.getElementById('instagramShareDismiss');
  if (instagramShareDismiss) {
    instagramShareDismiss.addEventListener('click', function (e) {
      e.stopPropagation();
      closeShareSaveDialog();
    });
  }
  document.getElementById('instagramShareDialog').addEventListener('click', function (e) {
    if (e.target === document.getElementById('instagramShareDialog')) closeShareSaveDialog();
  });

  // タイプ詳細シート
  document.getElementById('typeModalClose').addEventListener('click', closeSheet);
  el.typeModalBackdrop.addEventListener('click', closeSheet);

  // スワイプで閉じる
  var swipeStartY = 0, swipeDelta = 0;
  el.typeModalScroll.addEventListener('touchstart', function (e) {
    swipeStartY = e.touches[0].clientY;
    swipeDelta  = 0;
    el.typeModalSheet.style.transition = 'none';
  }, { passive: true });
  el.typeModalScroll.addEventListener('touchmove', function (e) {
    var delta = e.touches[0].clientY - swipeStartY;
    if (delta > 0 && el.typeModalScroll.scrollTop === 0) {
      swipeDelta = delta;
      var base = window.innerWidth >= 641
        ? 'translateX(-50%) translateY(' + delta + 'px)'
        : 'translateY(' + delta + 'px)';
      el.typeModalSheet.style.transform = base;
    }
  }, { passive: true });
  el.typeModalScroll.addEventListener('touchend', function () {
    el.typeModalSheet.style.transition = '';
    if (swipeDelta > 100) {
      el.typeModalSheet.style.transform = '';
      closeSheet();
    } else {
      el.typeModalSheet.style.transform = '';
    }
    swipeDelta = 0;
  });

  // キーボード
  document.addEventListener('keydown', function (e) {
    if (state.screen !== 'quiz') return;
    if (e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement) return;
    var k = e.key;
    if (k >= '1' && k <= '7') { e.preventDefault(); selectOption(parseInt(k, 10) - 1); }
  });

  // hashchange / pageshow
  window.addEventListener('pagehide', saveCurrentScrollPosition);
  window.addEventListener('beforeunload', saveCurrentScrollPosition);
  document.addEventListener('visibilitychange', function () {
    if (document.visibilityState === 'hidden') saveCurrentScrollPosition();
  });
  window.addEventListener('hashchange', applyRoute);
  window.addEventListener('pageshow', function (ev) { if (ev.persisted) applyRoute(); });

  // ── 初期化 ──────────────────────────────────────────────────────────────────
  renderTypesGrid();
  initWelcomeScreen();
  initQuizChar();
  hydratePersistedIntoStateOnce();
  hydrateTypesReturnParentFromStorage();
  applyRoute();

})();
