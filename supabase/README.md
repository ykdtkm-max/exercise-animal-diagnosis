# 運動タイプ診断 — Supabase コンテンツDB

## 1. プロジェクト作成（ダッシュボード）

1. [Supabase](https://supabase.com/dashboard) で新規プロジェクトを作成する。
2. **Project URL** と **anon public** / **service_role** キーを控える。
3. （任意）CLI: `supabase link --project-ref <ref>` をリポジトリルート（`運動タイプ診断/`）で実行。

## 2. スキーマ適用

```bash
cd 運動タイプ診断
supabase db push
```

または SQL Editor に `supabase/migrations/20260504181500_exercise_content_schema.sql` の内容を貼り実行。

## 3. Seed（静的JS → DB）

ルートで:

```bash
cp .env.example .env
# SUPABASE_URL と SUPABASE_SERVICE_ROLE_KEY（推奨）を記入する。

npm install
npm run seed:exercise
```

`--env-file` を使う場合: `npm run seed:exercise:with-env-file`

一時的な **anon + RLS 書き込みポリシー**で流す運用は README では推奨しません（運用で必要なら MCP / SQL Editor で短期ポリシーを足し、終了後に DROP する）。

確認のみ: `npm run seed:exercise:dry`

## 4. フロント（静的サイト）

本リポジトリでは [`fittness_type-main/supabase-config.js`](../fittness_type-main/supabase-config.js) に **公開用 anon** と Project URL を設定し、[`index.html`](../fittness_type-main/index.html) から読み込んでいます。**service_role はブラウザに置かない。** 別環境では [`supabase-config.example.js`](../fittness_type-main/supabase-config.example.js) をコピーして差し替える。

## テーブル

| テーブル | 内容 |
|-----------|------|
| `exercise_animals` | 16タイプのコード・表示名・並び順 |
| `exercise_animal_profiles` | コンセプト・継続コツ・アニマル相性ピル |
| `exercise_animal_motion_guides` | 向いている/向いていない運動＋プランナ |
| `exercise_animal_compat_pairs` | 有向ペア（最大240）— 詳細セクション JSON |
| `exercise_questions` | 設問（`order_index` が 1..N で連番） |
| `exercise_app_settings` | `option_labels`（リッカート）、`axis_info`（[`chars-data.js`](../fittness_type-main/chars-data.js) の `AXIS_INFO` と同等の JSON 配列。未投入時はフロントの `chars-data.js` が軸ラベルを供給する） |

すべて **anon は SELECT のみ（RLS）**。更新は Dashboard または service_role で行う。

## メモ

- Cursor の Supabase MCP が `user-supabase-project-a` のように表示されていても、紐づくのはダッシュボードの「プロジェクト名」とは限りません。**Project URL** で対象を確認してください。
- `secret-compat-detail-data.js` において、4 桁目が `H` のコード（例: `GFMH`）は、16 タイプの正式コード（`GFMD`）に合わせるため、シード時に **`H` → `D` に正規化**してから `exercise_animal_compat_pairs` に投入します。
