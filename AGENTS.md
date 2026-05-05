# AGENTS.md — 運動アニマル図鑑（exercise-v2）

このリポジトリで作業するエージェント／開発者は、以下のデプロイ運用ルールを必ず守ること。

## ⚠️ 必読: 本番 URL は fit-animal.com

- **本番 URL**: https://fit-animal.com
- **Vercel プロジェクト**: `exercise-v2-diagnosis`（`prj_AfgWaChlwFfixeQpNwmgNQE5Gtef`）
- **オーナー**: lyaos チーム（`team_ZaYNsMb3tiWoN970vcPnZ5jX`）
- **GitHub**: https://github.com/ykdtkm-max/exercise-animal-diagnosis.git
- **`.vercel/project.json`** は必ず以下の値を指していること:

```json
{"projectId":"prj_Q6CgoAAsdX2yXjT6q6CftXKHfEyq","orgId":"team_ZaYNsMb3tiWoN970vcPnZ5jX","projectName":"exercise-v2-diagnosis"}
```

`fit-animal.com` は `exercise-v2-diagnosis` Vercel プロジェクトのカスタムドメインとしてエイリアスされている。`exercise-v2-diagnosis.vercel.app` も alias として動くが、**ユーザーへの案内・告知では必ず `fit-animal.com` を使うこと**。

## デプロイ手順

```bash
cd /Users/takumi.ikeda/Downloads/fittness_type-main_first
# 1. 変更を git にコミット & push（GitHub→Vercel 自動デプロイのトリガーが弱いことがある）
git add -A
git commit -m "..."
git push origin main

# 2. 念のため CLI でも明示デプロイ
npx vercel deploy --prod --yes
```

> **絶対禁止**: 別の Vercel プロジェクト（`fittness_type-main` (`prj_83kkZ...`) など）に誤デプロイしないこと。デプロイ前に必ず `cat .vercel/project.json` で `projectName` が `exercise-v2-diagnosis` であることを確認する。

## キャッシュバスター更新ルール

JS/CSS を更新したら以下の `?v=` を必ずバンプする:

| ファイル | 場所 | 現行値の例 |
|---------|------|-----------|
| `styles.css?v=exercise-vNNN` | `fittness_type-main/index.html` / `privacy.html` | `exercise-v281` |
| `app.js?v=exercise-vNNN` | `fittness_type-main/content-loader.js` の `APP_SCRIPT` | `exercise-v283` |
| `content-loader.js?v=exercise-clNN` | `fittness_type-main/index.html` | `exercise-cl23` |
| `chars-data.js?v=exercise-chNN` | `fittness_type-main/index.html` | `exercise-ch21` |
| `clarity-init.js?v=clarity-N` | `fittness_type-main/index.html` / `privacy.html` | `clarity-2` |
| `tokens.css?v=exercise-tN` / `components.css?v=exercise-cNN` | `fittness_type-main/index.html` / `privacy.html` | `exercise-t2` / `exercise-c13` |
| `OGP.png?v=animal-N` | `fittness_type-main/index.html` の og:image / twitter:image | `animal-4` |

`index.html` と `privacy.html` で `styles.css?v=` がズレないように、両方同時に更新する運用とする。

## プロジェクト構造

```
/Users/takumi.ikeda/Downloads/fittness_type-main_first/
├── .git/                              # GitHub: exercise-animal-diagnosis
├── .vercel/project.json               # exercise-v2-diagnosis（fit-animal.com）
├── vercel.json                        # fittness_type-main/** を静的配信するルーティング
├── fittness_type-main/                # Web アプリ本体（HTML/JS/CSS）
│   ├── index.html  app.js  styles.css  content-loader.js  chars-data.js
│   ├── tokens.css  components.css  data.js  types-data.js  secret-compat-detail-data.js
│   ├── supabase-config.js  favicon.png  OGP.png  logo.png
│   ├── character/  chars/             # 16 アニマル SVG（日本語名 / 英名）
│   └── robots.txt
├── scripts/                           # seed/migration スクリプト（Node.js + .mjs）
├── supabase/                          # migrations / seeds
├── tools/                             # 153個の dev tools（コンテンツ生成系）
├── ドキュメント/                       # 仕様書・要件
│   └── 運動タイプ診断_要件/             # 旧 PdM/要件 から移動
├── legacy/                            # 旧 PdM ルートに混入していた ad-hoc Python/MD
└── node_modules/
```

## 関連プロジェクト（混ぜない）

- **`/Users/takumi.ikeda/PdM診断`** は完全に別プロジェクト（PdMタイプ診断 Next.js / `pdm-type` Vercel）。両者でファイルを混在させないこと。

## 注意点

- 16タイプのコンテンツは Supabase DB から取得（`content-loader.js`）。タイプ名・名言は `pdm_types` 相当の Supabase テーブルから動的にロードされるので、JS 側のハードコードに引きずられないこと。
- シェア画像生成（`exerciseResultStoryToBlob`）は Canvas API で 1080×1350 の PNG を生成。サイトロゴと表記を一致させる際は `tokens.css` の `--red` (#FF4D5A) と `--ink` (#2B2535) を参照する。
- `fit-animal.com` は HTTPS のみ・カスタムドメイン経由なので、CSP の `connect-src` に Supabase URL が含まれていることを確認する（`fittness_type-main/index.html` 参照）。
