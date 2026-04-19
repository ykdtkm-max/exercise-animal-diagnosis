'use client';

import { useState, useEffect, useCallback } from 'react';
import Header from '@/components/Header';
import PageTransition from '@/components/PageTransition';
import ExerciseResultScreen, { ExerciseResult } from './_components/ExerciseResultScreen';
import { exerciseQuestions, ExerciseQuestion } from './_data/exerciseDiagnosis';
import { Question } from '@/types';

// ─────────────────────────────────────────────────────────────────────────────
// ExerciseQuestion を既存 QuestionScreen が受け付ける Question 型に変換
// ─────────────────────────────────────────────────────────────────────────────
function toQuestion(q: ExerciseQuestion): Question {
  return {
    id: q.id,
    text: q.text,
    axis: String(q.axis),
    direction: q.direction,
  };
}

// ─────────────────────────────────────────────────────────────────────────────
// ウェルカム画面
// ─────────────────────────────────────────────────────────────────────────────
function WelcomeScreen({ onStart }: { onStart: () => void }) {
  return (
    <div className="welcome-page">
      <div className="welcome-hero">
        <div className="welcome-hero-eyebrow">運動タイプ診断</div>
        <div className="welcome-hero-title">
          あなたに合った<br />運動の楽しみ方を<br />発見しよう
        </div>
        <div className="welcome-hero-sub">
          40問の質問に答えるだけで、あなたの行動特性・運動動機・
          環境の好みを分析し、16タイプの中から最適な運動スタイルを診断します。
        </div>
      </div>

      <div className="welcome-cards">
        <div className="welcome-card">
          <div className="welcome-card-title">診断でわかること</div>
          <ul className="welcome-card-list">
            <li>あなたの運動タイプ（16タイプ）</li>
            <li>10の運動興味プロファイルスコア</li>
            <li>あなたに合った具体的な運動種目</li>
            <li>長く続けるためのアドバイス</li>
          </ul>
        </div>
        <div className="welcome-card">
          <div className="welcome-card-title">所要時間・問題数</div>
          <ul className="welcome-card-list">
            <li>全40問（リッカート4段階）</li>
            <li>所要時間：約5〜8分</li>
            <li>途中でやめることも可能</li>
          </ul>
        </div>
      </div>

      <div className="welcome-cta">
        <button className="btn btn-primary welcome-start-btn" onClick={onStart}>
          診断スタート
        </button>
      </div>
    </div>
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// 選択肢ラベル（PdM診断と同一）
// ─────────────────────────────────────────────────────────────────────────────
const OPTION_LABELS = [
  'とてもそう思う',
  'ある程度そう思う',
  'あまりそう思わない',
  'まったくそう思わない',
];

// ─────────────────────────────────────────────────────────────────────────────
// クイズ画面（QuestionScreen を inline 実装）
// ─────────────────────────────────────────────────────────────────────────────
interface QuizProps {
  question: Question;
  currentIdx: number;
  total: number;
  currentAnswer: number | null;
  onAnswer: (val: number) => void;
  onBack: () => void;
  onDiagnose: () => void;
}

function QuizCard({ question, currentIdx, total, currentAnswer, onAnswer, onBack, onDiagnose }: QuizProps) {
  const [localAnswer, setLocalAnswer] = useState<number | null>(currentAnswer);
  const timerRef = { current: null as ReturnType<typeof setTimeout> | null };

  useEffect(() => {
    setLocalAnswer(currentAnswer);
  }, [currentIdx, currentAnswer]);

  const handleOption = useCallback((val: number) => {
    if (timerRef.current) clearTimeout(timerRef.current);
    setLocalAnswer(val);
    if (currentIdx === total - 1) {
      onAnswer(val);
    } else {
      timerRef.current = setTimeout(() => { onAnswer(val); }, 500);
    }
  }, [onAnswer, currentIdx, total]); // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      if (e.metaKey || e.ctrlKey || e.altKey) return;
      if (e.key >= '1' && e.key <= '4') handleOption(parseInt(e.key));
      if ((e.key === 'ArrowLeft' || e.key === 'Backspace') && currentIdx > 0) {
        e.preventDefault();
        onBack();
      }
    };
    document.addEventListener('keydown', handler);
    return () => document.removeEventListener('keydown', handler);
  }, [handleOption, currentIdx, onBack]);

  return (
    <div className="q-section">
      <div id="qContent" key={currentIdx}>
        <div className="q-text">{question.text}</div>
      </div>
      <div className="options">
        {OPTION_LABELS.map((label, i) => {
          const val = OPTION_LABELS.length - i; // とても=4, ある程度=3, あまり=2, まったく=1
          return (
            <button
              key={val}
              className={`option ${localAnswer === val ? 'selected' : ''}`}
              onClick={() => handleOption(val)}
            >
              <span>{label}</span>
            </button>
          );
        })}
      </div>
      <div className={`q-hint${currentIdx === total - 1 ? ' q-hint--hidden' : ''}`}>
        選択すると自動で次に進みます
      </div>
      <div className="q-nav-buttons">
        <button
          className={`q-nav-btn ${currentIdx === 0 ? 'hidden' : ''}`}
          onClick={onBack}
        >
          前へ
        </button>
        {currentIdx === total - 1 ? (
          <button
            className={`q-diagnose-btn${localAnswer !== null ? ' q-diagnose-btn--active' : ''}`}
            onClick={localAnswer !== null ? onDiagnose : undefined}
          >
            診断する
          </button>
        ) : (
          <button
            className={`q-nav-btn ${currentAnswer === null ? 'hidden' : ''}`}
            onClick={() => { /* next は auto-advance */ }}
          >
            次へ
          </button>
        )}
      </div>
    </div>
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// 計算中 / 結果準備完了画面
// ─────────────────────────────────────────────────────────────────────────────
function ResultReadyScreen({ onView, isCalculating }: { onView: () => void; isCalculating: boolean }) {
  return (
    <div className="result-ready-page">
      {isCalculating ? (
        <>
          <div className="calculating-dots"><span /><span /><span /></div>
          <div className="result-ready-title">分析中</div>
          <div className="result-ready-body">あなたの運動タイプを解析しています</div>
        </>
      ) : (
        <>
          <div className="result-ready-title">診断完了</div>
          <div className="result-ready-body">
            あなたの運動タイプが判明しました。<br />
            準備ができたらボタンを押してください。
          </div>
          <button className="btn btn-primary result-ready-btn" onClick={onView}>
            結果を見る
          </button>
        </>
      )}
    </div>
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// メインページ
// ─────────────────────────────────────────────────────────────────────────────
export default function ExerciseDiagnosisPage() {
  const [started, setStarted] = useState(false);
  const [questions] = useState<Question[]>(() =>
    [...exerciseQuestions]
      .sort(() => Math.random() - 0.5)
      .map(toQuestion)
  );
  const [answers, setAnswers] = useState<(number | null)[]>(
    () => new Array(exerciseQuestions.length).fill(null)
  );
  const [currentIdx, setCurrentIdx] = useState(0);
  const [isCalculating, setIsCalculating] = useState(false);
  const [pendingResult, setPendingResult] = useState<ExerciseResult | null>(null);
  const [pendingResultId, setPendingResultId] = useState<string | null>(null);
  const [result, setResult] = useState<ExerciseResult | null>(null);
  const [resultId, setResultId] = useState<string | null>(null);
  const [calcError, setCalcError] = useState(false);

  const handleStart = () => setStarted(true);

  const handleAnswer = (val: number) => {
    const next = [...answers];
    next[currentIdx] = val;
    setAnswers(next);
    if (currentIdx < questions.length - 1) {
      setCurrentIdx(prev => prev + 1);
    }
  };

  const handleBack = () => {
    if (currentIdx > 0) setCurrentIdx(prev => prev - 1);
  };

  const handleDiagnose = async () => {
    setIsCalculating(true);
    const startTime = Date.now();
    try {
      // 回答を question の元の順序 (id 昇順) に並び替えて API へ送る
      const idToAnswer: Record<number, number | null> = {};
      questions.forEach((q, i) => { idToAnswer[q.id] = answers[i]; });
      const orderedAnswers = exerciseQuestions.map(q => idToAnswer[q.id] ?? null);

      const res = await fetch('/api/exercise-diagnose', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ answers: orderedAnswers, userId: null }),
      });
      if (!res.ok) throw new Error('API error');
      const data = await res.json();

      const elapsed = Date.now() - startTime;
      const MIN_MS = 3000;
      if (elapsed < MIN_MS) await new Promise(r => setTimeout(r, MIN_MS - elapsed));

      setPendingResult({
        axisScores: data.axisScores,
        desireScores: data.desireScores,
        typeCode: data.typeCode,
        typeName: data.typeName,
        typeQuote: data.typeQuote,
        typeConcept: data.typeConcept,
        typeActivities: data.typeActivities,
        typeAdvice: data.typeAdvice,
      });
      setPendingResultId(data.id ?? null);
    } catch (e) {
      console.error(e);
      setCalcError(true);
    } finally {
      setIsCalculating(false);
    }
  };

  const handleViewResult = () => {
    if (!pendingResult) return;
    setResult(pendingResult);
    setResultId(pendingResultId);
    setPendingResult(null);
    setPendingResultId(null);
  };

  const restart = () => {
    setStarted(false);
    setAnswers(new Array(exerciseQuestions.length).fill(null));
    setCurrentIdx(0);
    setResult(null);
    setResultId(null);
    setPendingResult(null);
    setPendingResultId(null);
    setIsCalculating(false);
    setCalcError(false);
  };

  const isQuiz = started && !result && !pendingResult && !isCalculating && !calcError;
  const isResultReady = isCalculating || (pendingResult !== null);
  const screenKey = result ? 'result' : isResultReady ? 'ready' : isQuiz ? 'quiz' : 'welcome';

  return (
    <>
      <Header
        variant={isQuiz || isResultReady ? 'quiz' : 'home'}
        answeredCount={currentIdx + 1}
        totalCount={questions.length}
        onBack={isQuiz || isResultReady ? restart : undefined}
      />

      <PageTransition animKey={screenKey}>

        {!started && !result && (
          <WelcomeScreen onStart={handleStart} />
        )}

        {isQuiz && questions.length > 0 && (
          <div className="quiz-page">
            <div className="quiz-card-wrap">
              <div className="card-progress-wrap">
                <span className="card-progress-count">{currentIdx + 1} / {questions.length}</span>
                <div className="card-progress-track">
                  <div
                    className="card-progress-fill"
                    style={{ width: `${Math.round(((currentIdx + 1) / questions.length) * 100)}%` }}
                  />
                </div>
              </div>
              <div className="card">
                <div className="card-body">
                  <QuizCard
                    question={questions[currentIdx]}
                    currentIdx={currentIdx}
                    total={questions.length}
                    currentAnswer={answers[currentIdx]}
                    onAnswer={handleAnswer}
                    onBack={handleBack}
                    onDiagnose={handleDiagnose}
                  />
                </div>
              </div>
            </div>
          </div>
        )}

        {calcError && (
          <div className="result-ready-page">
            <div className="result-ready-title">エラーが発生しました</div>
            <div className="result-ready-body">
              診断結果の処理中に問題が発生しました。<br />もう一度お試しください。
            </div>
            <button className="btn btn-primary" style={{ marginTop: '28px' }} onClick={restart}>
              トップに戻る
            </button>
          </div>
        )}

        {isResultReady && (
          <ResultReadyScreen onView={handleViewResult} isCalculating={isCalculating} />
        )}

        {result && (
          <div className="result-container">
            <ExerciseResultScreen
              result={result}
              resultId={resultId}
              onRestart={restart}
            />
          </div>
        )}

      </PageTransition>
    </>
  );
}
