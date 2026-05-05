/**
 * Supabase (PostgREST) からコンテンツを取得し window.EXERCISE_* と
 * window.SECRET_COMPAT_PAIR_DETAIL を組み立てる。
 *
 * - URL+キーあり・正常: Supabase → app.js
 * - URL+キーあり・失敗: エラー UI（開発時のみ ?useStatic=1 で静的3本にフォールバック）
 * - URL+キーなし: 静的3本（types-data / data / secret-compat-detail） → app.js
 */
(function () {
  'use strict';

  var STATIC_SCRIPTS = [
    'types-data.js?v=exercise-v51',
    'data.js?v=exercise-v9',
    'secret-compat-detail-data.js?v=exercise-scd19',
  ];
  var APP_SCRIPT = 'app.js?v=exercise-v288';
  var OPTION_LABEL_FALLBACK = [
    'とても賛成',
    '賛成',
    'どちらかといえば賛成',
    'どちらかといえば反対',
    '反対',
    'とても反対',
  ];

  var EXPECTED_ANIMAL_COUNT = 16;

  /** 4文字コード末尾の H を公式の D に揃える */
  function normalizeAnimalCode(raw) {
    var c = String(raw || '')
      .trim()
      .toUpperCase();
    if (c.length === 4 && c.charAt(3) === 'H') return c.slice(0, 3) + 'D';
    return c;
  }

  /** 相性マップのボス/相手キーを正規化 */
  function normalizeSecretCompatPairDetailRoot(src) {
    if (!src || typeof src !== 'object') return src;
    var out = {};
    for (var boss in src) {
      if (!Object.prototype.hasOwnProperty.call(src, boss)) continue;
      var bn = normalizeAnimalCode(boss);
      if (!out[bn]) out[bn] = {};
      var peers = src[boss];
      for (var other in peers) {
        if (!Object.prototype.hasOwnProperty.call(peers, other)) continue;
        var pn = normalizeAnimalCode(other);
        var cell = peers[other];
        var copy = {};
        for (var k in cell) {
          if (Object.prototype.hasOwnProperty.call(cell, k)) copy[k] = cell[k];
        }
        copy.bossCode = bn;
        copy.otherCode = pn;
        out[bn][pn] = copy;
      }
    }
    return out;
  }

  function wantsStaticFallback() {
    try {
      var s = window.location && window.location.search ? String(window.location.search) : '';
      return /(?:^\?|&)useStatic=1(?:&|$)/.test(s) || /(?:^\?|&)static=1(?:&|$)/.test(s);
    } catch (_e) {
      return false;
    }
  }

  function renderSupabaseFailureUi() {
    if (!document.body) return;
    var overlay = document.createElement('div');
    overlay.setAttribute('role', 'alert');
    overlay.style.cssText =
      'position:fixed;inset:0;z-index:99999;background:rgba(255,251,247,.96);padding:24px;display:flex;align-items:center;justify-content:center;text-align:center;font:16px/1.55 system-ui,-apple-system,sans-serif;color:#222;box-sizing:border-box;';
    var inner = document.createElement('div');
    inner.style.maxWidth = '22rem';
    var h = document.createElement('h2');
    h.style.cssText = 'font-size:1.05rem;margin:0 0 12px;font-weight:700';
    h.textContent = 'コンテンツを読み込めませんでした';
    var p = document.createElement('p');
    p.style.margin = '0 0 10px';
    p.textContent = '通信環境をご確認のうえ、ページを再読み込みしてください。';
    var dev = document.createElement('p');
    dev.style.cssText = 'margin:0;font-size:.8rem;color:#555';
    dev.textContent = '開発時のみ: URL に ?useStatic=1 を付与するとローカル静的データで起動します。';
    inner.appendChild(h);
    inner.appendChild(p);
    inner.appendChild(dev);
    overlay.appendChild(inner);
    document.body.appendChild(overlay);
  }

  function loadScript(src) {
    return new Promise(function (resolve, reject) {
      var s = document.createElement('script');
      s.src = src;
      s.onload = resolve;
      s.onerror = function () {
        reject(new Error('Failed to load script: ' + src));
      };
      document.body.appendChild(s);
    });
  }

  function loadSequential(urls, i, done, err) {
    if (i >= urls.length) return done();
    loadScript(urls[i]).then(function () {
      loadSequential(urls, i + 1, done, err);
    }, err);
  }

  function restHeaders(anonKey) {
    return {
      apikey: anonKey,
      Authorization: 'Bearer ' + anonKey,
      Accept: 'application/json',
    };
  }

  function normalizeBlocks(v) {
    if (Array.isArray(v)) return v;
    if (v && typeof v === 'string') {
      try {
        var parsed = JSON.parse(v);
        return Array.isArray(parsed) ? parsed : [];
      } catch (e) {
        return [];
      }
    }
    return [];
  }


  /** 設問の order_index が 1..N 連番・重複なしかを検証 */
  function validateQuestionsOrderIndexed(questions) {
    if (!Array.isArray(questions) || questions.length < 1) {
      throw new Error('exercise_questions: expected at least 1 row');
    }
    var seen = {};
    var maxIx = 0;
    var i;
    var q;
    var oi;
    for (i = 0; i < questions.length; i++) {
      q = questions[i];
      oi = q && q.order_index;
      if (typeof oi !== 'number' || oi < 1 || oi !== Math.floor(oi)) {
        throw new Error('exercise_questions: invalid order_index');
      }
      if (seen[oi]) throw new Error('exercise_questions: duplicate order_index ' + oi);
      seen[oi] = true;
      if (oi > maxIx) maxIx = oi;
    }
    if (Object.keys(seen).length !== maxIx) {
      throw new Error('exercise_questions: order_index must be 1..N without gaps');
    }
  }

  function validateAssembledExercise(animals, profiles, motions, compatRows, questions, typesObj) {
    var nAnimal;
    var expectedPairs;
    if (!Array.isArray(animals) || animals.length !== EXPECTED_ANIMAL_COUNT) {
      throw new Error('exercise_animals: expected ' + EXPECTED_ANIMAL_COUNT + ' rows');
    }
    nAnimal = animals.length;
    expectedPairs = nAnimal * (nAnimal - 1);
    if (!Array.isArray(profiles) || profiles.length !== EXPECTED_ANIMAL_COUNT) {
      throw new Error('exercise_animal_profiles: expected ' + EXPECTED_ANIMAL_COUNT + ' rows');
    }
    if (!Array.isArray(motions) || motions.length !== EXPECTED_ANIMAL_COUNT) {
      throw new Error('exercise_animal_motion_guides: expected ' + EXPECTED_ANIMAL_COUNT + ' rows');
    }
    if (!Array.isArray(compatRows) || compatRows.length !== expectedPairs) {
      throw new Error(
        'exercise_animal_compat_pairs: expected ' + expectedPairs + ' rows, got ' +
          (compatRows && compatRows.length),
      );
    }
    validateQuestionsOrderIndexed(questions);
    var profileCodes = {};
    profiles.forEach(function (p) {
      profileCodes[p.animal_code] = true;
    });
    var motionCodes = {};
    motions.forEach(function (m) {
      motionCodes[m.animal_code] = true;
    });
    animals.forEach(function (a) {
      var code = a.code;
      if (!profileCodes[code]) throw new Error('missing profile row for ' + code);
      if (!motionCodes[code]) throw new Error('missing motion guide row for ' + code);
      if (!typesObj[code]) throw new Error('internal: typesObj missing ' + code);
    });
  }

  function assembleFromSupabase(restBase, anonKey, done, err) {
    var hdrs = restHeaders(anonKey);
    var qp = '?select=*';

    function fetchJson(path) {
      return fetch(restBase + '/rest/v1/' + path + qp, { headers: hdrs }).then(function (r) {
        if (!r.ok) throw new Error(path + ': ' + r.status);
        return r.json();
      });
    }

    Promise.all([
      fetchJson('exercise_animals').then(function (rows) {
        return rows.slice().sort(function (a, b) {
          return a.sort_order - b.sort_order;
        });
      }),
      fetchJson('exercise_animal_profiles'),
      fetchJson('exercise_animal_motion_guides'),
      fetchJson('exercise_animal_compat_pairs'),
      fetchJson('exercise_questions').then(function (rows) {
        return rows.slice().sort(function (a, b) {
          return a.order_index - b.order_index;
        });
      }),
      fetch(
        restBase +
          '/rest/v1/exercise_app_settings?setting_key=in.(option_labels,axis_info)&select=setting_key,setting_value',
        { headers: hdrs },
      )
        .then(function (r) {
          if (!r.ok) throw new Error('exercise_app_settings: ' + r.status);
          return r.json();
        })
        .then(function (rows) {
          var labels = OPTION_LABEL_FALLBACK;
          var axisInfo = null;
          if (Array.isArray(rows)) {
            rows.forEach(function (row) {
              if (!row || !row.setting_key) return;
              if (
                row.setting_key === 'option_labels' &&
                Array.isArray(row.setting_value) &&
                row.setting_value.length
              ) {
                labels = row.setting_value;
              }
              if (
                row.setting_key === 'axis_info' &&
                Array.isArray(row.setting_value) &&
                row.setting_value.length
              ) {
                axisInfo = row.setting_value;
              }
            });
          }
          return { optionLabels: labels, axisInfo: axisInfo };
        }),
    ])
      .then(function (parts) {
        var animals = parts[0];
        var profiles = parts[1];
        var motions = parts[2];
        var compatRows = parts[3];
        var questions = parts[4];
        var optionLabels = parts[5].optionLabels;
        var axisFromDb = parts[5].axisInfo;

        var profileBy = {};
        profiles.forEach(function (p) {
          profileBy[p.animal_code] = p;
        });
        var motionBy = {};
        motions.forEach(function (m) {
          motionBy[m.animal_code] = m;
        });
        var nameByCode = {};
        animals.forEach(function (a) {
          nameByCode[a.code] = a.type_name;
        });

        var order = animals.map(function (a) {
          return a.code;
        });

        var typesObj = {};
        animals.forEach(function (a) {
          var code = a.code;
          var p = profileBy[code] || {};
          var m = motionBy[code] || {};
          var gCode = p.compat_pill_good_code || null;
          var bCode = p.compat_pill_bad_code || null;
          var goodArr = [];
          var badArr = [];
          if (gCode && p.compat_pill_good_reason != null && p.compat_pill_good_reason !== '') {
            goodArr.push({
              code: gCode,
              name: nameByCode[gCode] || gCode,
              reason: p.compat_pill_good_reason,
            });
          }
          if (bCode && p.compat_pill_bad_reason != null && p.compat_pill_bad_reason !== '') {
            badArr.push({
              code: bCode,
              name: nameByCode[bCode] || bCode,
              reason: p.compat_pill_bad_reason,
            });
          }

          typesObj[code] = {
            code: code,
            type_name: a.type_name,
            tagline: p.tagline || '',
            concept_title: p.concept_title || '',
            concept: p.concept_body || '',
            catchphrases: normalizeBlocks(p.catchphrases),
            suit_title: m.suit_summary_title || '',
            suit_text: m.suit_summary_body || '',
            unsuited_title: m.unsuited_summary_title || '',
            unsuited_text: m.unsuited_summary_body || '',
            continuation_title: p.continuation_title || '',
            continuation_text: p.continuation_body || '',
            compatible_types: { good: goodArr, bad: badArr },
            suit_plans: Array.isArray(m.suit_plans) ? m.suit_plans : [],
            unsuited_plans: Array.isArray(m.unsuited_plans) ? m.unsuited_plans : [],
          };
        });

        validateAssembledExercise(animals, profiles, motions, compatRows, questions, typesObj);

        window.EXERCISE_V2_TYPE_ORDER = order;

        window.EXERCISE_V2_OPTION_LABELS =
          Array.isArray(optionLabels) && optionLabels.length
            ? optionLabels
            : OPTION_LABEL_FALLBACK;

        window.EXERCISE_V2_QUESTIONS = questions.map(function (q) {
          return {
            orderIndex: q.order_index,
            axis: q.axis,
            polarity:
              q.polarity &&
              String(q.polarity)
                .trim()
                .charAt(0),
            text: q.question_text,
          };
        });

        window.EXERCISE_V2_TYPES = typesObj;

        if (axisFromDb) {
          window.AXIS_INFO = axisFromDb;
        }

        var detail = {};
        compatRows.forEach(function (row) {
          var from = row.from_animal_code;
          var to = row.to_animal_code;
          if (!detail[from]) detail[from] = {};
          detail[from][to] = {
            otherCode: to,
            bossCode: from,
            sections: {
              highlight: {
                headings: ['相性解説'],
                blocks: normalizeBlocks(row.compat_explanation_blocks),
              },
              enjoyTips: {
                headings: ['一緒に楽しむコツ'],
                blocks: normalizeBlocks(row.enjoy_tips_blocks),
              },
              caution: {
                headings: ['摩擦ポイント'],
                blocks: normalizeBlocks(row.friction_blocks),
              },
            },
            extraSections: Array.isArray(row.extra_sections) ? row.extra_sections : [],
          };
        });
        window.SECRET_COMPAT_PAIR_DETAIL = normalizeSecretCompatPairDetailRoot(detail);
        window.__EXERCISE_CONTENT_SOURCE = 'supabase';

        done();
      })
      .catch(err);
  }

  function bootErr(e) {
    // 詳細はコンソールのみに残し、DOM には実装詳細を露出しない
    console.error('[content-loader]', e);
    document.body &&
      document.body.setAttribute('data-content-error', 'content_load_failed');
  }

  function loadApp() {
    return loadScript(APP_SCRIPT);
  }

  var url = window.EXERCISE_SUPABASE_URL || '';
  var key = window.EXERCISE_SUPABASE_ANON_KEY || '';
  var restBase = String(url || '').replace(/\/$/, '');

  if (restBase && key) {
    assembleFromSupabase(
      restBase,
      key,
      function () {
        loadApp().catch(bootErr);
      },
      function (e) {
        console.warn('[content-loader] Supabase fetch failed.', e);
        if (wantsStaticFallback()) {
          console.warn('[content-loader] useStatic=1: loading local bundle.');
          loadSequential(STATIC_SCRIPTS, 0, function () {
            window.__EXERCISE_CONTENT_SOURCE = 'static';
            if (window.SECRET_COMPAT_PAIR_DETAIL) {
              window.SECRET_COMPAT_PAIR_DETAIL = normalizeSecretCompatPairDetailRoot(
                window.SECRET_COMPAT_PAIR_DETAIL,
              );
            }
            loadApp().catch(bootErr);
          }, bootErr);
          return;
        }
        bootErr(e);
        renderSupabaseFailureUi();
      },
    );
  } else {
    loadSequential(STATIC_SCRIPTS, 0, function () {
      window.__EXERCISE_CONTENT_SOURCE = 'static';
      if (window.SECRET_COMPAT_PAIR_DETAIL) {
        window.SECRET_COMPAT_PAIR_DETAIL = normalizeSecretCompatPairDetailRoot(
          window.SECRET_COMPAT_PAIR_DETAIL,
        );
      }
      loadApp().catch(bootErr);
    }, bootErr);
  }
})();
