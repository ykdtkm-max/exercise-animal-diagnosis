"use client";

import { useState, useEffect } from 'react';
import {
  DesireKey,
  TypeCode,
  desireData,
  exerciseTypes,
  sortedDesires,
} from '../_data/exerciseDiagnosis';

export interface ExerciseResult {
  axisScores: number[];
  desireScores: Record<DesireKey, number>;
  typeCode: TypeCode;
  typeName: string;
  typeQuote: string;
  typeConcept: string;
  typeActivities: string[];
  typeAdvice: string;
}

interface Props {
  result: ExerciseResult;
  resultId?: string | null;
  onRestart?: () => void;
  isSharedView?: boolean;
}

const SELF_DESIRES: DesireKey[] = ['健康', '精神', '外見', '成長', '習慣'];
const SOCIAL_DESIRES: DesireKey[] = ['仲間', '交流', '娯楽', '承認', '競争'];

// ─────────────────────────────────────────────
// 欲求バーコンポーネント
// ─────────────────────────────────────────────
function DesireBar({
  desireKey,
  score,
  animate,
  isTop,
}: {
  desireKey: DesireKey;
  score: number;
  animate: boolean;
  isTop: boolean;
}) {
  const data = desireData[desireKey];
  return (
    <div className="domain-item">
      <div className="domain-label-wrap">
        <div className="domain-label">
          {data.label}
          {isTop && <span className="domain-rank top">HIGH</span>}
        </div>
        <div className="domain-sub">{data.desc}</div>
      </div>
      <div className="domain-bar-bg">
        <div
          className="domain-bar-fill"
          style={{ width: animate ? `${score}%` : '0%' }}
        />
      </div>
      <div className="domain-score">{score}</div>
    </div>
  );
}

// ─────────────────────────────────────────────
// TOP3欲求カード
// ─────────────────────────────────────────────
const DESIRE_EMOJIS: Record<DesireKey, string> = {
  健康: '💪', 精神: '🧘', 外見: '✨', 成長: '📈', 習慣: '🔄',
  仲間: '🤝', 交流: '🗣️', 娯楽: '🎉', 承認: '⭐', 競争: '🏆',
};

function Top3DesireCards({
  desireScores,
}: {
  desireScores: Record<DesireKey, number>;
}) {
  const top3 = sortedDesires(desireScores).slice(0, 3);
  const ranks = ['1st', '2nd', '3rd'];
  return (
    <div style={{ display: 'flex', gap: '12px', flexWrap: 'wrap' }}>
      {top3.map(({ key, score }, i) => {
        const data = desireData[key];
        return (
          <div
            key={key}
            style={{
              flex: '1 1 140px',
              background: i === 0
                ? 'linear-gradient(135deg, var(--accent, #6366f1) 0%, #8b5cf6 100%)'
                : 'var(--card-bg, #f8f9fa)',
              color: i === 0 ? '#fff' : 'inherit',
              borderRadius: '12px',
              padding: '16px',
              border: i === 0 ? 'none' : '1px solid var(--border, #e5e7eb)',
              boxShadow: i === 0 ? '0 4px 16px rgba(99,102,241,0.3)' : '0 1px 4px rgba(0,0,0,0.06)',
              textAlign: 'center',
            }}
          >
            <div style={{ fontSize: '11px', fontWeight: 700, opacity: 0.7, letterSpacing: '0.06em', marginBottom: '6px' }}>
              {ranks[i]}
            </div>
            <div style={{ fontSize: '28px', marginBottom: '6px' }}>{DESIRE_EMOJIS[key]}</div>
            <div style={{ fontSize: '15px', fontWeight: 700, marginBottom: '4px' }}>{data.label}</div>
            <div style={{ fontSize: '11px', opacity: 0.75, marginBottom: '8px', lineHeight: 1.4 }}>{data.desc}</div>
            <div style={{
              fontSize: '20px',
              fontWeight: 800,
              background: i === 0 ? 'rgba(255,255,255,0.2)' : 'var(--accent-light, #ede9fe)',
              color: i === 0 ? '#fff' : 'var(--accent, #6366f1)',
              borderRadius: '8px',
              padding: '4px 0',
            }}>
              {score}
            </div>
          </div>
        );
      })}
    </div>
  );
}

// ─────────────────────────────────────────────
// レーダーチャート（二重五角形 SVG）
// ─────────────────────────────────────────────
function DesireRadarChart({
  desireScores,
  animate,
}: {
  desireScores: Record<DesireKey, number>;
  animate: boolean;
}) {
  const cx = 150;
  const cy = 155;
  const maxR = 95;

  // 五角形の角度（頂点を上にする）
  const angles = Array.from({ length: 5 }, (_, i) => ((i * 72 - 90) * Math.PI) / 180);

  const toXY = (r: number, angle: number) => ({
    x: cx + r * Math.cos(angle),
    y: cy + r * Math.sin(angle),
  });

  const toPoints = (scores: number[], keys: DesireKey[]) =>
    keys.map((k, i) => {
      const r = animate ? (desireScores[k] / 100) * maxR : 0;
      return toXY(r, angles[i]);
    });

  const selfPoints = toPoints(SELF_DESIRES.map(k => desireScores[k]), SELF_DESIRES);
  const socialPoints = toPoints(SOCIAL_DESIRES.map(k => desireScores[k]), SOCIAL_DESIRES);

  const gridLevels = [0.25, 0.5, 0.75, 1.0];

  const toPolygonPoints = (pts: { x: number; y: number }[]) =>
    pts.map(p => `${p.x.toFixed(1)},${p.y.toFixed(1)}`).join(' ');

  const gridPentagon = (scale: number) =>
    angles.map(a => {
      const p = toXY(maxR * scale, a);
      return `${p.x.toFixed(1)},${p.y.toFixed(1)}`;
    }).join(' ');

  return (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '8px' }}>
      <svg viewBox="0 0 300 310" width="100%" style={{ maxWidth: '300px' }}>
        {/* グリッド */}
        {gridLevels.map(s => (
          <polygon
            key={s}
            points={gridPentagon(s)}
            fill="none"
            stroke="var(--border, #e5e7eb)"
            strokeWidth="1"
          />
        ))}
        {/* 軸線 */}
        {angles.map((a, i) => {
          const outer = toXY(maxR, a);
          return (
            <line
              key={i}
              x1={cx} y1={cy}
              x2={outer.x.toFixed(1)} y2={outer.y.toFixed(1)}
              stroke="var(--border, #e5e7eb)"
              strokeWidth="1"
            />
          );
        })}

        {/* 自己欲求（青紫） */}
        <polygon
          points={toPolygonPoints(selfPoints)}
          fill="rgba(99,102,241,0.18)"
          stroke="#6366f1"
          strokeWidth="2"
          style={{ transition: animate ? 'all 0.6s ease' : 'none' }}
        />
        {selfPoints.map((p, i) => (
          <circle key={`s${i}`} cx={p.x} cy={p.y} r="4" fill="#6366f1" />
        ))}

        {/* 社会欲求（緑） */}
        <polygon
          points={toPolygonPoints(socialPoints)}
          fill="rgba(16,185,129,0.15)"
          stroke="#10b981"
          strokeWidth="2"
          style={{ transition: animate ? 'all 0.6s ease' : 'none' }}
        />
        {socialPoints.map((p, i) => (
          <circle key={`g${i}`} cx={p.x} cy={p.y} r="4" fill="#10b981" />
        ))}

        {/* ラベル */}
        {SELF_DESIRES.map((k, i) => {
          const labelR = maxR + 20;
          const lp = toXY(labelR, angles[i]);
          return (
            <text
              key={`sl${i}`}
              x={lp.x.toFixed(1)}
              y={lp.y.toFixed(1)}
              textAnchor="middle"
              dominantBaseline="middle"
              fontSize="10"
              fill="var(--text-secondary, #6b7280)"
            >
              {desireData[k].label}
            </text>
          );
        })}
        {SOCIAL_DESIRES.map((k, i) => {
          const labelR = maxR + 20;
          const lp = toXY(labelR, angles[i]);
          return (
            <text
              key={`gl${i}`}
              x={lp.x.toFixed(1)}
              y={(lp.y + 12).toFixed(1)}
              textAnchor="middle"
              dominantBaseline="middle"
              fontSize="10"
              fill="var(--text-secondary, #6b7280)"
            >
              {desireData[k].label}
            </text>
          );
        })}
      </svg>

      {/* 凡例 */}
      <div style={{ display: 'flex', gap: '16px', fontSize: '12px', color: 'var(--text-secondary, #6b7280)' }}>
        <span style={{ display: 'flex', alignItems: 'center', gap: '5px' }}>
          <span style={{ width: 12, height: 12, background: '#6366f1', borderRadius: '3px', display: 'inline-block' }} />
          自己欲求
        </span>
        <span style={{ display: 'flex', alignItems: 'center', gap: '5px' }}>
          <span style={{ width: 12, height: 12, background: '#10b981', borderRadius: '3px', display: 'inline-block' }} />
          社会欲求
        </span>
      </div>
    </div>
  );
}

// ─────────────────────────────────────────────
// メインコンポーネント
// ─────────────────────────────────────────────
export default function ExerciseResultScreen({
  result,
  resultId,
  onRestart,
  isSharedView,
}: Props) {
  const [animateBars, setAnimateBars] = useState(false);
  const [copied, setCopied] = useState(false);

  useEffect(() => {
    const timer = setTimeout(() => setAnimateBars(true), 100);
    return () => clearTimeout(timer);
  }, []);

  const type = exerciseTypes[result.typeCode] ?? exerciseTypes['S-健康'];

  const sorted = sortedDesires(result.desireScores);
  const topKeys = new Set(sorted.slice(0, 3).map(d => d.key));

  const shareUrl = resultId
    ? `${typeof window !== 'undefined' ? window.location.origin : ''}/exercise/result/${resultId}`
    : '';

  const xShareText = `私の運動タイプは【${type.name}】でした！\n\n自分に合った運動の楽しみ方がわかる診断はこちら👇\n${shareUrl}`;

  const handleCopyUrl = async () => {
    if (!shareUrl) return;
    try {
      await navigator.clipboard.writeText(shareUrl);
      setCopied(true);
      setTimeout(() => setCopied(false), 3000);
    } catch {
      // ignore
    }
  };

  const axisLabels = [
    { name: '社会志向', low: 'ソロ志向', high: 'グループ志向' },
    { name: '動機源泉', low: '内発・過程型', high: '外発・結果型' },
    { name: '行動様式', low: '直感・柔軟型', high: '計画・構造型' },
    { name: '強度欲求', low: '安定・維持型', high: '追い込み・挑戦型' },
    { name: '目標参照', low: '自己参照型', high: '他者参照型' },
    { name: '身体焦点', low: '機能・健康志向', high: '審美・外見志向' },
    { name: '社会希求', low: '体験・快楽型', high: '関係・絆型' },
    { name: '環境選好', low: '室内・管理型', high: '屋外・自然型' },
  ];

  return (
    <div className="result-flow">

      {/* ─── [1] タイプ名 + キャッチフレーズ + 概念説明 ─── */}
      <div className="result-sc-group">
        <div className="result-sc-heading">あなたの運動タイプ</div>
        <div className="result-sc">
          <div className="result-sc-hero">
            <div className="result-hero-code">{result.typeCode}</div>
            <div className="result-hero-type-name">{type.name}</div>
            <div className="result-hero-quote">{type.quote}</div>
          </div>
          <div className="result-sc-body">
            <div className="result-section" style={{ marginBottom: 0 }}>
              <div className="result-section-eyebrow">タイプ解説</div>
              <div className="result-desc">{type.concept}</div>
            </div>
          </div>
        </div>
      </div>

      {/* ─── [2] あなたが運動で求めているもの TOP3 ─── */}
      {!isSharedView && (
        <div className="result-sc-group">
          <div className="result-sc-heading">あなたが運動で求めているもの</div>
          <div className="result-sc">
            <div className="result-sc-body">
              <div className="result-section" style={{ marginBottom: 0 }}>
                <div className="result-section-eyebrow">TOP 3 欲求</div>
                <div className="result-section-title">あなたの運動モチベーションの核心</div>
                <Top3DesireCards desireScores={result.desireScores} />
              </div>
            </div>
          </div>
        </div>
      )}

      {/* ─── [3] 10欲求スコア + レーダーチャート ─── */}
      {!isSharedView && (
        <div className="result-sc-group">
          <div className="result-sc-heading">運動興味プロファイル</div>
          <div className="result-sc">
            <div className="result-sc-body">

              {/* レーダーチャート */}
              <div className="result-section">
                <div className="result-section-eyebrow">欲求レーダーチャート</div>
                <div className="result-section-title">10欲求の全体バランス</div>
                <DesireRadarChart desireScores={result.desireScores} animate={animateBars} />
              </div>

              {/* バー: 自己欲求 */}
              <div className="result-section">
                <div className="result-section-eyebrow">自己欲求</div>
                <div className="result-section-title">運動における「自己への関心」の分布</div>
                <div className="domain-list">
                  {SELF_DESIRES.map(key => (
                    <DesireBar
                      key={key}
                      desireKey={key}
                      score={result.desireScores[key]}
                      animate={animateBars}
                      isTop={topKeys.has(key)}
                    />
                  ))}
                </div>
              </div>

              {/* バー: 社会欲求 */}
              <div className="result-section" style={{ marginBottom: 0 }}>
                <div className="result-section-eyebrow">社会欲求</div>
                <div className="result-section-title">運動における「社会への関心」の分布</div>
                <div className="domain-list">
                  {SOCIAL_DESIRES.map(key => (
                    <DesireBar
                      key={key}
                      desireKey={key}
                      score={result.desireScores[key]}
                      animate={animateBars}
                      isTop={topKeys.has(key)}
                    />
                  ))}
                </div>
              </div>

            </div>
          </div>
        </div>
      )}

      {/* ─── [5] あなたに合った運動スタイル ─── */}
      <div className="result-sc-group">
        <div className="result-sc-heading">あなたに合った運動スタイル</div>
        <div className="result-sc">
          <div className="result-sc-body">
            <div className="result-section" style={{ marginBottom: 0 }}>
              <div className="sw-grid">
                <div className="sw-box">
                  <div className="sw-box-head">おすすめの運動種目</div>
                  <ul style={{ margin: '8px 0 0 0', paddingLeft: '18px', lineHeight: 1.8 }}>
                    {type.activities.map((act, i) => (
                      <li key={i}>{act}</li>
                    ))}
                  </ul>
                </div>
                <div className="sw-box">
                  <div className="sw-box-head">継続のためのアドバイス</div>
                  <p style={{ margin: 0, lineHeight: 1.7 }}>{type.advice}</p>
                </div>
                {!isSharedView && (
                  <>
                    <div className="sw-box" style={{ borderLeft: '3px solid #f59e0b' }}>
                      <div className="sw-box-head" style={{ color: '#b45309' }}>⚠️ このタイプの落とし穴</div>
                      <p style={{ fontSize: '13px', lineHeight: 1.7, margin: 0 }}>{type.pitfall}</p>
                    </div>
                    <div className="sw-box" style={{ borderLeft: '3px solid #ef4444' }}>
                      <div className="sw-box-head" style={{ color: '#b91c1c' }}>🚫 向いていない運動スタイル</div>
                      <p style={{ fontSize: '13px', lineHeight: 1.7, margin: 0 }}>{type.badFit}</p>
                    </div>
                  </>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* ─── [4b] 季節別プラン ─── */}
      <div className="result-sc-group">
        <div className="result-sc-heading">季節別の運動プラン</div>
        <div className="result-sc">
          <div className="result-sc-body">
            <div className="exercise-seasonal-grid">
              {([
                { key: 'spring', label: '春', emoji: '🌸' },
                { key: 'summer', label: '夏', emoji: '☀️' },
                { key: 'autumn', label: '秋', emoji: '🍂' },
                { key: 'winter', label: '冬', emoji: '❄️' },
              ] as const).map(({ key, label, emoji }) => (
                <div key={key} className="exercise-seasonal-card">
                  <div className="exercise-seasonal-head">
                    <span className="exercise-seasonal-emoji">{emoji}</span>
                    <span className="exercise-seasonal-label">{label}</span>
                  </div>
                  <p className="exercise-seasonal-body">{type.seasonalPlan[key]}</p>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>

      {/* ─── CTA ─── */}
      {!isSharedView && (
        <div className="result-cta-area">
          <button className="btn btn-primary result-primary-cta" onClick={onRestart}>
            もう一度診断する
          </button>

          {shareUrl && (
            <div className="result-share-wrap">
              <a
                href={`https://twitter.com/intent/tweet?text=${encodeURIComponent(xShareText)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="result-share-text-btn"
              >
                Xでシェアする
              </a>
              <button className="result-share-text-btn" onClick={handleCopyUrl}>
                {copied ? '✓ URLをコピーしました' : 'URLをコピーする'}
              </button>
            </div>
          )}
        </div>
      )}

      {isSharedView && (
        <div className="result-cta">
          <a href="/exercise" className="btn btn-primary result-share-main-btn">
            自分も診断してみる
          </a>
        </div>
      )}

    </div>
  );
}
