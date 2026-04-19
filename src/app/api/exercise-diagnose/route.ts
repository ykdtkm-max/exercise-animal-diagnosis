/**
 * POST /api/exercise-diagnose
 * 運動タイプ診断ロジック：
 *   40問回答 → 8軸スコア → 10欲求スコア → 16タイプ判定 → DB保存(任意) → JSON返却
 */
import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import {
  exerciseQuestions,
  calculateAxisScores,
  calculateDesireScores,
  determineExerciseType,
  exerciseTypes,
  ExerciseQuestion,
} from '@/app/exercise/_data/exerciseDiagnosis';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export async function POST(request: Request) {
  try {
    const { answers, userId } = await request.json() as {
      answers: (number | null)[];
      userId: string | null;
    };

    if (!answers || answers.length !== exerciseQuestions.length) {
      return NextResponse.json(
        { error: `回答数が正しくありません。期待: ${exerciseQuestions.length}, 受信: ${answers?.length ?? 0}` },
        { status: 400 },
      );
    }

    // ── 計算 ────────────────────────────────────────────────────────────────
    const axisScores = calculateAxisScores(answers, exerciseQuestions as ExerciseQuestion[]);
    const desireScores = calculateDesireScores(axisScores);
    const typeCode = determineExerciseType(axisScores, desireScores);
    const typeData = exerciseTypes[typeCode];

    // ── DB 保存（exercise_diagnoses テーブルが存在する場合のみ） ───────────────
    let savedId: string | null = null;
    try {
      const { data, error } = await supabase
        .from('exercise_diagnoses')
        .insert([{
          user_id: userId ?? null,
          axis_scores: axisScores,
          desire_scores: desireScores,
          type_code: typeCode,
          type_name: typeData?.name ?? typeCode,
        }])
        .select('id')
        .single();

      if (!error && data?.id) {
        savedId = data.id as string;
      }
    } catch {
      // テーブルが存在しない場合はスキップ（診断自体は返却する）
    }

    return NextResponse.json({
      id: savedId,
      axisScores,
      desireScores,
      typeCode,
      typeName: typeData?.name ?? typeCode,
      typeQuote: typeData?.quote ?? '',
      typeConcept: typeData?.concept ?? '',
      typeActivities: typeData?.activities ?? [],
      typeAdvice: typeData?.advice ?? '',
      typePitfall: typeData?.pitfall ?? '',
      typeBadFit: typeData?.badFit ?? '',
      typeSeasonalPlan: typeData?.seasonalPlan ?? null,
    });

  } catch (err: unknown) {
    const message = err instanceof Error ? err.message : 'Unknown error';
    console.error('[/api/exercise-diagnose]', message);
    return NextResponse.json({ error: message }, { status: 500 });
  }
}
