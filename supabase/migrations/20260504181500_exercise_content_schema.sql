-- 運動タイプ診断: コンテンツ用テーブル（PdMとは別プロジェクト想定）

-- ── updated_at ─────────────────────────────────────────
CREATE OR REPLACE FUNCTION public.exercise_set_updated_at()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

-- ── animals (16 rows) ────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.exercise_animals (
  code text NOT NULL PRIMARY KEY CHECK (length(code) = 4 AND code = upper(code)),
  type_name text NOT NULL,
  sort_order smallint NOT NULL UNIQUE,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TRIGGER exercise_animals_set_updated_at
  BEFORE UPDATE ON public.exercise_animals
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── profiles (結果コア・アニマル相性ピル) ─────────────────
CREATE TABLE IF NOT EXISTS public.exercise_animal_profiles (
  animal_code text NOT NULL PRIMARY KEY REFERENCES public.exercise_animals (code) ON DELETE CASCADE,
  tagline text,
  catchphrases jsonb NOT NULL DEFAULT '[]'::jsonb,
  concept_title text,
  concept_body text,
  continuation_title text,
  continuation_body text,
  compat_pill_good_code text REFERENCES public.exercise_animals (code),
  compat_pill_good_reason text,
  compat_pill_bad_code text REFERENCES public.exercise_animals (code),
  compat_pill_bad_reason text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TRIGGER exercise_animal_profiles_set_updated_at
  BEFORE UPDATE ON public.exercise_animal_profiles
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── motion guides (向き/不向き・プランナ) ─────────────────
CREATE TABLE IF NOT EXISTS public.exercise_animal_motion_guides (
  animal_code text NOT NULL PRIMARY KEY REFERENCES public.exercise_animals (code) ON DELETE CASCADE,
  suit_summary_title text,
  suit_summary_body text,
  unsuited_summary_title text,
  unsuited_summary_body text,
  suit_plans jsonb NOT NULL DEFAULT '[]'::jsonb,
  unsuited_plans jsonb NOT NULL DEFAULT '[]'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TRIGGER exercise_animal_motion_guides_set_updated_at
  BEFORE UPDATE ON public.exercise_animal_motion_guides
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── pairwise compat (有向 16×15) ─────────────────────────
CREATE TABLE IF NOT EXISTS public.exercise_animal_compat_pairs (
  from_animal_code text NOT NULL REFERENCES public.exercise_animals (code) ON DELETE CASCADE,
  to_animal_code text NOT NULL REFERENCES public.exercise_animals (code) ON DELETE CASCADE,
  compat_explanation_blocks jsonb NOT NULL DEFAULT '[]'::jsonb,
  enjoy_tips_blocks jsonb NOT NULL DEFAULT '[]'::jsonb,
  friction_blocks jsonb NOT NULL DEFAULT '[]'::jsonb,
  extra_sections jsonb DEFAULT '[]'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT exercise_animal_compat_pairs_pk PRIMARY KEY (from_animal_code, to_animal_code),
  CONSTRAINT exercise_animal_compat_pairs_distinct CHECK (from_animal_code <> to_animal_code)
);

CREATE INDEX IF NOT EXISTS exercise_animal_compat_pairs_from_idx ON public.exercise_animal_compat_pairs (from_animal_code);
CREATE INDEX IF NOT EXISTS exercise_animal_compat_pairs_to_idx ON public.exercise_animal_compat_pairs (to_animal_code);

CREATE TRIGGER exercise_animal_compat_pairs_set_updated_at
  BEFORE UPDATE ON public.exercise_animal_compat_pairs
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── questions ────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.exercise_questions (
  order_index integer NOT NULL PRIMARY KEY CHECK (order_index >= 1),
  axis smallint NOT NULL CHECK (axis >= 1 AND axis <= 4),
  polarity text NOT NULL CHECK (char_length(trim(polarity)) = 1 AND trim(polarity) IN ('S', 'G', 'F', 'P', 'M', 'V', 'C', 'D')),
  question_text text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TRIGGER exercise_questions_set_updated_at
  BEFORE UPDATE ON public.exercise_questions
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── misc app settings (e.g. option labels) ────────────────
CREATE TABLE IF NOT EXISTS public.exercise_app_settings (
  setting_key text NOT NULL PRIMARY KEY,
  setting_value jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TRIGGER exercise_app_settings_set_updated_at
  BEFORE UPDATE ON public.exercise_app_settings
  FOR EACH ROW EXECUTE PROCEDURE public.exercise_set_updated_at();

-- ── RLS ───────────────────────────────────────────────────
ALTER TABLE public.exercise_animals ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercise_animal_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercise_animal_motion_guides ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercise_animal_compat_pairs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercise_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercise_app_settings ENABLE ROW LEVEL SECURITY;

CREATE POLICY "exercise_animals_public_read"
  ON public.exercise_animals FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "exercise_animal_profiles_public_read"
  ON public.exercise_animal_profiles FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "exercise_animal_motion_guides_public_read"
  ON public.exercise_animal_motion_guides FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "exercise_animal_compat_pairs_public_read"
  ON public.exercise_animal_compat_pairs FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "exercise_questions_public_read"
  ON public.exercise_questions FOR SELECT TO anon, authenticated USING (true);

CREATE POLICY "exercise_app_settings_public_read"
  ON public.exercise_app_settings FOR SELECT TO anon, authenticated USING (true);

