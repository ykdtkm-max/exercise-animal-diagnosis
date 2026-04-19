BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GFAD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFACはゆるく長く続けることを大切にし、GFADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GFACにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFADにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFADが活動の意欲を引き上げ、GFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFAD'
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
  'GFACにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFADにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFADが活動の意欲を引き上げ、GFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFAD'
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
  'GFACにとって、全力で踊らず半分の力で動く選択肢もあります。音楽に乗るだけで十分な有酸素運動になります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFADにとっては、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFADが活動の意欲を引き上げ、GFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GFTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは失敗をさほど引きずらず前に進みやすく、GFTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTC'
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
  'GFACにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GFTCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTC'
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
  'GFACにとって、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GFTCにとっては、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;