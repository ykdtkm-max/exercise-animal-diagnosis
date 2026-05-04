BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SFMC', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SFMH', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GFMCはゆるく長く続けることを大切にし、SFMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFMCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFMHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GFMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SFVC', '2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GFMCは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GFMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

SFVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

GFMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SFVH', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GFMCは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。また、GFMCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFVHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFVHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SPMC', '2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GFMCは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

SPMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

GFMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

GFMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SPMH', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GFMCは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。また、GFMCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFMCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SPMHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GFMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '公園ジョギング',
  '🏃',
  'GFMCにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SPMHにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GFMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SPVC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GFMCは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。また、GFMCは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GFMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SPVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GFMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GFMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SPVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GFMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'SPVH', 'GFMCは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。一方、GFMCは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。一方、GFMCは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。一方、GFMCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPVHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPVHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SFMC', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GFMHは挑戦や達成からエネルギーを得る一方、SFMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFMHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFMCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GFMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SFMH', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GFMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SFVC', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GFMHは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。また、GFMHは挑戦や達成からエネルギーを得る一方、SFVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFVCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SFVH', '2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GFMHは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SPMC', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GFMHは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。また、GFMHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFMHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SPMCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GFMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '公園ジョギング',
  '🏃',
  'GFMHにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SPMCにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GFMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SPMH', '2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GFMHは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GFMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

SPMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

GFMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

SPMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

GFMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SPVC', 'GFMHは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。一方、GFMHは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。一方、GFMHは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。一方、GFMHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPVCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'SPVH', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GFMHは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。また、GFMHは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GFMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GFMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SPVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GFMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SPVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GFMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SFMC', '2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GFVCは体験を深く感じ取り丁寧に向き合う一方、SFMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GFVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

SFMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

GFVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SFMH', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GFVCは体験を深く感じ取り丁寧に向き合う一方、SFMHは失敗をすぐに切り替えて前に進みます。また、GFVCはゆるく長く続けることを大切にし、SFMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFVCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFMHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SFVC', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SFVH', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GFVCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFVCにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SPMC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GFVCは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。また、GFVCは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GFVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SPMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GFVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GFVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SPMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GFVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SPMH', 'GFVCは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。一方、GFVCは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。一方、GFVCは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。一方、GFVCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFVCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPMHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SPVC', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GFVCは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

GFVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'SPVH', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVCは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GFVCは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。また、GFVCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPVHにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SFMC', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GFVHは体験を深く感じ取り丁寧に向き合う一方、SFMCは失敗をすぐに切り替えて前に進みます。また、GFVHは挑戦や達成からエネルギーを得る一方、SFMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFVHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SFMH', '2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GFVHは体験を深く感じ取り丁寧に向き合う一方、SFMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SFVC', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GFVHは挑戦や達成からエネルギーを得る一方、SFVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFVCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFVCにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SFVH', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ダンスフィットネス体験',
  '💃',
  'GFVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SPMC', 'GFVHは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。一方、GFVHは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。一方、GFVHは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。一方、GFVHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GFVHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SPMH', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GFVHは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。また、GFVHは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GFVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GFVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SPMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GFVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GFVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SPMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GFVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SPVC', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GFVHは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。また、GFVHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPVCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GFVHにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'SPVH', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GFVHは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GFVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ダンスフィットネス体験',
  '💃',
  'GFVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

SPVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

GFVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SFMC', '2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GPMCは計画や段取りがあると本領を発揮し、SFMCは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

SFMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

GPMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

GPMCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SFMH', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GPMCは計画や段取りがあると本領を発揮し、SFMHは気分や流れに合わせて動くのが自然です。また、GPMCはゆるく長く続けることを大切にし、SFMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPMCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SFMHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GPMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '公園ジョギング',
  '🏃',
  'GPMCにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SFMHにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GPMCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SFVC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GPMCは計画や段取りがあると本領を発揮し、SFVCは気分や流れに合わせて動くのが自然です。また、GPMCは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GPMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SFVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GPMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SFVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GPMCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SFVH', 'GPMCは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。一方、GPMCは計画や段取りがあると本領を発揮し、SFVHは気分や流れに合わせて動くのが自然です。一方、GPMCは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。一方、GPMCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GPMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFVHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFVHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPMCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SPMC', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GPMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPMCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SPMH', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GPMCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPMCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPMHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GPMCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GPMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPMCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SPVC', '2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GPMCは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GPMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPMCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPMCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'SPVH', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPMCは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GPMCは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。また、GPMCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPMCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPVHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPVHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPMCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPVHにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPMCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SFMC', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GPMHは計画や段取りがあると本領を発揮し、SFMCは気分や流れに合わせて動くのが自然です。また、GPMHは挑戦や達成からエネルギーを得る一方、SFMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPMHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SFMCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GPMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '公園ジョギング',
  '🏃',
  'GPMHにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SFMCにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GPMHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SFMH', '2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GPMHは計画や段取りがあると本領を発揮し、SFMHは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GPMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

SFMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

GPMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GPMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

SFMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

GPMHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SFVC', 'GPMHは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。一方、GPMHは計画や段取りがあると本領を発揮し、SFVCは気分や流れに合わせて動くのが自然です。一方、GPMHは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。一方、GPMHは挑戦や達成からエネルギーを得る一方、SFVCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GPMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFVCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPMHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SFVH', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GPMHは計画や段取りがあると本領を発揮し、SFVHは気分や流れに合わせて動くのが自然です。また、GPMHは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GPMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GPMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SFVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GPMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GPMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SFVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GPMHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SPMC', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GPMHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPMHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPMCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GPMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPMHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SPMH', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPMHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPMHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'レンタサイクル街歩き',
  '🚴',
  'GPMHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPMHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SPVC', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GPMHは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。また、GPMHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPVCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPMHにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPMHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'SPVH', '2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPMHは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GPMHは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPMHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GPMHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

SPVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

GPMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GPMHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPVHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPMHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SFMC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。また、GPVCは計画や段取りがあると本領を発揮し、SFMCは気分や流れに合わせて動くのが自然です。また、GPVCは体験を深く感じ取り丁寧に向き合う一方、SFMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GPVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SFMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GPVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SFMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GPVCが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SFMH', 'GPVCは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。一方、GPVCは計画や段取りがあると本領を発揮し、SFMHは気分や流れに合わせて動くのが自然です。一方、GPVCは体験を深く感じ取り丁寧に向き合う一方、SFMHは失敗をすぐに切り替えて前に進みます。一方、GPVCはゆるく長く続けることを大切にし、SFMHは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GPVCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFMHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPVCが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SFVC', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GPVCは計画や段取りがあると本領を発揮し、SFVCは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

SFVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

GPVCが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SFVH', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GPVCは計画や段取りがあると本領を発揮し、SFVHは気分や流れに合わせて動くのが自然です。また、GPVCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPVCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFVHにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPVCが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SPMC', '2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GPVCは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GPVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPMCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPVCが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SPMH', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GPVCは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。また、GPVCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPVCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPMHにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPMHにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPVCが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SPVC', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPVCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ピラティス体験',
  '🤸',
  'GPVCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPVCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPVCが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'SPVH', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPVCは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。また、GPVCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPVCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GPVCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'スイミング',
  '🏊',
  'GPVCにとって、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

SPVHにとっては、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

GPVCが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SFMC', 'GPVHは誰かと一緒に動くことからエネルギーを得る一方、SFMCは一人のペースを大切にします。一方、GPVHは計画や段取りがあると本領を発揮し、SFMCは気分や流れに合わせて動くのが自然です。一方、GPVHは体験を深く感じ取り丁寧に向き合う一方、SFMCは失敗をすぐに切り替えて前に進みます。一方、GPVHは挑戦や達成からエネルギーを得る一方、SFMCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFMCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ボルダリング体験',
  '🧗',
  'GPVHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPVHが場の活気を生み出し、SFMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SFMH', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SFMHは一人のペースを大切にします。また、GPVHは計画や段取りがあると本領を発揮し、SFMHは気分や流れに合わせて動くのが自然です。また、GPVHは体験を深く感じ取り丁寧に向き合う一方、SFMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SFMHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GPVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GPVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SFMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GPVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GPVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SFMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GPVHが場の活気を生み出し、SFMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SFVC', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SFVCは一人のペースを大切にします。また、GPVHは計画や段取りがあると本領を発揮し、SFVCは気分や流れに合わせて動くのが自然です。また、GPVHは挑戦や達成からエネルギーを得る一方、SFVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFVCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'GPVHにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFVCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPVHが場の活気を生み出し、SFVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SFVH', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SFVHは一人のペースを大切にします。また、GPVHは計画や段取りがあると本領を発揮し、SFVHは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  '近郊ハイキング',
  '🥾',
  'GPVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ダンスフィットネス体験',
  '💃',
  'GPVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

SFVHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

GPVHが場の活気を生み出し、SFVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SPMC', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SPMCは一人のペースを大切にします。また、GPVHは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。また、GPVHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPVHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPMCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPVHにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPMCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ピラティス体験',
  '🤸',
  'GPVHにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPMCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPVHが場の活気を生み出し、SPMCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SPMH', '2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SPMHは一人のペースを大切にします。また、GPVHは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPMHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'ダンスフィットネス体験',
  '💃',
  'GPVHにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

SPMHにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

GPVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'ボルダリング体験',
  '🧗',
  'GPVHにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPMHにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPVHが場の活気を生み出し、SPMHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPMHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SPVC', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SPVCは一人のペースを大切にします。また、GPVHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPVCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPVCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'スイミング',
  '🏊',
  'GPVHにとって、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

SPVCにとっては、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

GPVHが場の活気を生み出し、SPVCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVH', 'SPVH', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPVHは誰かと一緒に動くことからエネルギーを得る一方、SPVHは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPVHにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPVHにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  2,
  'レンタサイクル街歩き',
  '🚴',
  'GPVHにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPVHにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  3,
  'テニス・バドミントン体験',
  '🎾',
  'GPVHにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPVHにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPVHが場の活気を生み出し、SPVHがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPVHは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPVHは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;
