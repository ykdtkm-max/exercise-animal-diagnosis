import { createClient } from '@supabase/supabase-js';
import { notFound } from 'next/navigation';
import Header from '@/components/Header';
import PageTransition from '@/components/PageTransition';
import ExerciseResultScreen from '../../_components/ExerciseResultScreen';
import { exerciseTypes, TypeCode, DesireKey } from '../../_data/exerciseDiagnosis';

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export default async function ExerciseResultPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id } = await params;

  const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
  if (!uuidRegex.test(id)) notFound();

  const { data, error } = await supabaseAdmin
    .from('exercise_diagnoses')
    .select('*')
    .eq('id', id)
    .single();

  if (error || !data) notFound();

  const typeCode = data.type_code as TypeCode;
  const typeData = exerciseTypes[typeCode];

  const result = {
    axisScores: data.axis_scores as number[],
    desireScores: data.desire_scores as Record<DesireKey, number>,
    typeCode,
    typeName: typeData?.name ?? data.type_name,
    typeQuote: typeData?.quote ?? '',
    typeConcept: typeData?.concept ?? '',
    typeActivities: typeData?.activities ?? [],
    typeAdvice: typeData?.advice ?? '',
  };

  return (
    <>
      <Header variant="home" />
      <PageTransition>
        <div className="result-container">
          <ExerciseResultScreen result={result} isSharedView={true} />
        </div>
      </PageTransition>
    </>
  );
}
