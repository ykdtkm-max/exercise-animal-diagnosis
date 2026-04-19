BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SFAC', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAC'
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
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAC'
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
  'GFACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SFAD', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GFACはゆるく長く続けることを大切にし、SFADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAD'
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
  'GFACにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFADにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAD'
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
  'GFACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SFTC', '2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GFACは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTC'
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
  'GFACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

SFTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

GFACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTC'
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
  'GFACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SFTD', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GFACは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。また、GFACはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTD'
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
  'GFACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFTDにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTD'
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
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFTDにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SPAC', '2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GFACは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAC'
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
  'GFACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

SPACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

GFACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAC'
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
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

GFACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SPAD', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GFACは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。また、GFACはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAD'
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
  'GFACにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SPADにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GFACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAD'
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
  'GFACにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SPADにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GFACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SPTC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GFACは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。また、GFACは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GFACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTC'
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
  'GFACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SPTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GFACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTC'
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
  'GFACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SPTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GFACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'SPTD', 'GFACは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。一方、GFACは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。一方、GFACは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。一方、GFACはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTD'
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
  'GFACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPTDにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTD'
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
  'GFACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPTDにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SFAC', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GFADは挑戦や達成からエネルギーを得る一方、SFACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAC'
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
  'GFADにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFACにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAC'
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
  'GFADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SFAD', '2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAD'
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
  'GFADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAD'
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
  'GFADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SFTC', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GFADは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。また、GFADは挑戦や達成からエネルギーを得る一方、SFTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTC'
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
  'GFADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFTCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTC'
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
  'GFADにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SFTD', '2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GFADは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTD'
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
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTD'
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
  'GFADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SPAC', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GFADは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。また、GFADは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAC'
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
  'GFADにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SPACにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GFADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAC'
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
  'GFADにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SPACにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GFADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SPAD', '2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GFADは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GFADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAD'
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
  'GFADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

SPADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

GFADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAD'
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
  'GFADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

SPADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

GFADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SPTC', 'GFADは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。一方、GFADは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。一方、GFADは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。一方、GFADは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTC'
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
  'GFADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPTCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTC'
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
  'GFADにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'SPTD', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GFADは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。また、GFADは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GFADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTD'
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
  'GFADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SPTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GFADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTD'
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
  'GFADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SPTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GFADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SFAC', '2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GFTCは体験を深く感じ取り丁寧に向き合う一方、SFACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAC'
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
  'GFTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

SFACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。

GFTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAC'
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
  'GFTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SFAD', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GFTCは体験を深く感じ取り丁寧に向き合う一方、SFADは失敗をすぐに切り替えて前に進みます。また、GFTCはゆるく長く続けることを大切にし、SFADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAD'
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
  'GFTCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAD'
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
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFADにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SFTC', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTC'
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
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTC'
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
  'GFTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

SFTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。

GFTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SFTD', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GFTCはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTD'
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
  'GFTCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTD'
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
  'GFTCにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SPAC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GFTCは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。また、GFTCは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GFTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAC'
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
  'GFTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SPACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GFTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAC'
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
  'GFTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SPACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GFTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SPAD', 'GFTCは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。一方、GFTCは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。一方、GFTCは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。一方、GFTCはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAD'
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
  'GFTCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAD'
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
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPADにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SPTC', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GFTCは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTC'
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
  'GFTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTC'
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
  'GFTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

GFTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'SPTD', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTCは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GFTCは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。また、GFTCはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTD'
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
  'GFTCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTD'
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
  'GFTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPTDにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SFAC', '2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GFTDは体験を深く感じ取り丁寧に向き合う一方、SFACは失敗をすぐに切り替えて前に進みます。また、GFTDは挑戦や達成からエネルギーを得る一方、SFACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAC'
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
  'GFTDにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SFACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GFTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAC'
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
  'GFTDにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GFTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SFAD', '2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GFTDは体験を深く感じ取り丁寧に向き合う一方、SFADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAD'
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
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAD'
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
  'GFTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SFTC', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GFTDは挑戦や達成からエネルギーを得る一方、SFTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTC'
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
  'GFTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFTCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTC'
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
  'GFTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

SFTCにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ラリーの感覚をつかむ過程が楽しく、「なんとなく打ち返せた」という体験が積み重なると面白さが増します。

GFTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SFTD', '2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GFTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTD'
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
  'GFTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

SFTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。

GFTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTD'
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
  'GFTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

SFTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。

GFTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SPAC', 'GFTDは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。一方、GFTDは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。一方、GFTDは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。一方、GFTDは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

SPACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GFTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAC'
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
  'GFTDにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

SPACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GFTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAC'
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
  'GFTDにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GFTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SPAD', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GFTDは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。また、GFTDは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GFTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAD'
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
  'GFTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SPADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GFTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAD'
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
  'GFTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SPADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GFTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SPTC', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GFTDは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。また、GFTDは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTC'
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
  'GFTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPTCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTC'
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
  'GFTDにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SPTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GFTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'SPTD', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GFTDは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GFTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTD'
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
  'GFTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SPTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GFTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTD'
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
  'GFTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

SPTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

GFTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  'GFTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SFAC', '2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GPACは計画や段取りがあると本領を発揮し、SFACは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAC'
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
  'GPACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

SFACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。

GPACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAC'
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
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。

GPACが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SFAD', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GPACは計画や段取りがあると本領を発揮し、SFADは気分や流れに合わせて動くのが自然です。また、GPACはゆるく長く続けることを大切にし、SFADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAD'
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
  'GPACにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SFADにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GPACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAD'
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
  'GPACにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SFADにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GPACが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SFTC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GPACは計画や段取りがあると本領を発揮し、SFTCは気分や流れに合わせて動くのが自然です。また、GPACは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GPACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTC'
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
  'GPACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SFTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GPACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTC'
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
  'GPACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SFTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GPACが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SFTD', 'GPACは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。一方、GPACは計画や段取りがあると本領を発揮し、SFTDは気分や流れに合わせて動くのが自然です。一方、GPACは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。一方、GPACはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTD'
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
  'GPACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFTDにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTD'
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
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFTDにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPACが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SPAC', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAC'
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
  'GPACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAC'
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
  'GPACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPACが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SPAD', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GPACはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPACにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPADにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAD'
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
  'GPACにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAD'
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
  'GPACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPACが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SPTC', '2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GPACは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTC'
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
  'GPACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTC'
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
  'GPACにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPACが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'SPTD', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPACは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GPACは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。また、GPACはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPACにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPTDにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTD'
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
  'GPACにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPTDにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTD'
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
  'GPACにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPTDにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPACが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SFAC', '2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GPADは計画や段取りがあると本領を発揮し、SFACは気分や流れに合わせて動くのが自然です。また、GPADは挑戦や達成からエネルギーを得る一方、SFACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAC'
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
  'GPADにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

SFACにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。

GPADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAC'
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
  'GPADにとって、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

SFACにとっては、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。また、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。

GPADが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SFAD', '2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GPADは計画や段取りがあると本領を発揮し、SFADは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、行き先が変わっても時間が押しても特に気にせず楽しめます。その場の状況に応じた判断が自然にできます。

GPADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAD'
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
  'GPADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

SFADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。

GPADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAD'
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
  'GPADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

SFADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、ミスしてもすぐ次のポイントに気持ちを切り替えられます。

GPADが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SFTC', 'GPADは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。一方、GPADは計画や段取りがあると本領を発揮し、SFTCは気分や流れに合わせて動くのが自然です。一方、GPADは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。一方、GPADは挑戦や達成からエネルギーを得る一方、SFTCはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTC'
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
  'GPADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFTCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTC'
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
  'GPADにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPADが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SFTD', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GPADは計画や段取りがあると本領を発揮し、SFTDは気分や流れに合わせて動くのが自然です。また、GPADは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GPADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTD'
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
  'GPADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SFTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GPADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTD'
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
  'GPADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SFTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GPADが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SPAC', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GPADは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPADにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPACにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAC'
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
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAC'
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
  'GPADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPADが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SPAD', '2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAD'
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
  'GPADにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPADにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAD'
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
  'GPADにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPADが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SPTC', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GPADは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。また、GPADは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPTCにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTC'
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
  'GPADにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTC'
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
  'GPADにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPADが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'SPTD', '2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPADは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GPADは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPADにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTD'
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
  'GPADにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

SPTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

GPADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTD'
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
  'GPADにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPTDにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPADが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SFAC', '2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。また、GPTCは計画や段取りがあると本領を発揮し、SFACは気分や流れに合わせて動くのが自然です。また、GPTCは体験を深く感じ取り丁寧に向き合う一方、SFACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。

GPTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAC'
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
  'GPTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

SFACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、体に負担をかけずに一日を始められます。強度が低く日常の一部として組み込みやすいです。

GPTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAC'
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
  'GPTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

SFACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、負荷が低く体を傷めにくい活動です。「ゆっくり丁寧に動く」というピラティスの性質がCタイプに合います。

GPTCが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SFAD', 'GPTCは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。一方、GPTCは計画や段取りがあると本領を発揮し、SFADは気分や流れに合わせて動くのが自然です。一方、GPTCは体験を深く感じ取り丁寧に向き合う一方、SFADは失敗をすぐに切り替えて前に進みます。一方、GPTCはゆるく長く続けることを大切にし、SFADは挑戦や達成を通じてやる気が出てきます。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAD'
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
  'GPTCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAD'
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
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFADにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPTCが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SFTC', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GPTCは計画や段取りがあると本領を発揮し、SFTCは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTC'
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
  'GPTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTC'
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
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

SFTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。

GPTCが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SFTD', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GPTCは計画や段取りがあると本領を発揮し、SFTDは気分や流れに合わせて動くのが自然です。また、GPTCはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTD'
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
  'GPTCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTD'
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
  'GPTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFTDにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPTCが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SPAC', '2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GPTCは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAC'
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
  'GPTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAC'
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
  'GPTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPACにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPTCが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SPAD', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GPTCは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。また、GPTCはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPTCにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAD'
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
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPADにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAD'
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
  'GPTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPADにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPTCが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SPTC', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPTCにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPTCにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTC'
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
  'GPTCにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPTCにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTC'
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
  'GPTCにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

SPTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。

GPTCが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'SPTD', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPTCは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。また、GPTCはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPTCにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTD'
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
  'GPTCにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTD'
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
  'GPTCにとって、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

SPTDにとっては、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

GPTCが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SFAC', 'GPTDは誰かと一緒に動くことからエネルギーを得る一方、SFACは一人のペースを大切にします。一方、GPTDは計画や段取りがあると本領を発揮し、SFACは気分や流れに合わせて動くのが自然です。一方、GPTDは体験を深く感じ取り丁寧に向き合う一方、SFACは失敗をすぐに切り替えて前に進みます。一方、GPTDは挑戦や達成からエネルギーを得る一方、SFACはゆるく無理なく続けることを大切にします。4つの軸すべてで異なる組み合わせですが、それぞれの違いが補完関係になることで、単独では経験できない運動体験が生まれやすいです。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SFACにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。

GPTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAC'
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
  'GPTDにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SFACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。

GPTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAC'
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
  'GPTDにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SFACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。

GPTDが場の活気を生み出し、SFACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SFAD', '2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SFADは一人のペースを大切にします。また、GPTDは計画や段取りがあると本領を発揮し、SFADは気分や流れに合わせて動くのが自然です。また、GPTDは体験を深く感じ取り丁寧に向き合う一方、SFADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

SFADにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。

GPTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAD'
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
  'GPTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

SFADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。

GPTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAD'
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
  'GPTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

SFADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、技術向上・大会参加・スコアの記録など挑戦の要素が豊富にあります。

GPTDが場の活気を生み出し、SFADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SFTC', '2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SFTCは一人のペースを大切にします。また、GPTDは計画や段取りがあると本領を発揮し、SFTCは気分や流れに合わせて動くのが自然です。また、GPTDは挑戦や達成からエネルギーを得る一方、SFTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTC'
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
  'GPTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFTCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTC'
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
  'GPTDにとって、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

SFTCにとっては、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。また、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。

GPTDが場の活気を生み出し、SFTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SFTD', '2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SFTDは一人のペースを大切にします。また、GPTDは計画や段取りがあると本領を発揮し、SFTDは気分や流れに合わせて動くのが自然です。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

SFTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、一緒にいる相手や地図アプリに頼れるため、判断プレッシャーが少なくなります。時間の枠があることで「いつ終わるか分からない」という不安も出にくいです。

GPTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTD'
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
  'GPTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

SFTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。

GPTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTD'
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
  'GPTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

SFTDにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。

GPTDが場の活気を生み出し、SFTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SFTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SPAC', '2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SPACは一人のペースを大切にします。また、GPTDは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。また、GPTDは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'GPTDにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPACにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAC'
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
  'GPTDにとって、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

SPACにとっては、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。また、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。

GPTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAC'
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
  'GPTDにとって、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

SPACにとっては、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。また、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。

GPTDが場の活気を生み出し、SPACがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPACは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SPAD', '2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SPADは一人のペースを大切にします。また、GPTDは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'テニス・バドミントン体験',
  '🎾',
  'GPTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPADにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAD'
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
  'GPTDにとって、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

SPADにとっては、自分の動きに集中できる活動です。周りと完全に合わせなくても成立するため、「自分の解釈で踊る」という自由度があります。また、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。

GPTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAD'
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
  'GPTDにとって、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

SPADにとっては、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。また、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。

GPTDが場の活気を生み出し、SPADがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPADは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SPTC', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SPTCは一人のペースを大切にします。また、GPTDは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPTCにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTC'
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
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPTCにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTC'
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
  'GPTDにとって、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

SPTCにとっては、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。また、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。

GPTDが場の活気を生み出し、SPTCがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTCは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTD', 'SPTD', '2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPTDは誰かと一緒に動くことからエネルギーを得る一方、SPTDは一人のペースを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPTDにとって、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

SPTDにとっては、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。また、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。

GPTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTD'
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
  'GPTDにとって、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

SPTDにとっては、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。また、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。

GPTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTD'
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
  'GPTDにとって、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

SPTDにとっては、ラリーを続けることに集中している時間は自分の動きだけに意識が向いています。相手との協力（ラリー）か対戦かを選べます。また、スコアや勝敗、フォームの改善という目標設定ができます。練習メニューを組む楽しみもあります。

GPTDが場の活気を生み出し、SPTDがそのエネルギーを自分のペースで受け取るという自然な役割分担ができます。',
  'SPTDは義務感や予定の重さを感じやすいので、「気が向いたら」「体験だけでいいから」という軽い誘い方がうまくいきやすいです。',
  'GPTDは一緒に動く体験の共有に喜びを感じます。「一緒に行こう」という言葉と具体的な日時・場所を伝えることで、相手が期待感を持って準備できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;
