BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GFMH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMCはゆるく長く続けることを大切にし、GFMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GFMCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFMHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFMHが活動の意欲を引き上げ、GFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFMHにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFMHが活動の意欲を引き上げ、GFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、全力で踊らず半分の力で動く選択肢もあります。音楽に乗るだけで十分な有酸素運動になります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFMHにとっては、全力で踊ると高い有酸素負荷になります。振り付けの習得・マスターという目標も設定できます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFMHが活動の意欲を引き上げ、GFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GFVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは失敗をさほど引きずらず前に進みやすく、GFVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GFVCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GFVCにとっては、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GFVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFMCは失敗をさほど引きずらず前に進みやすく、GFVHは一つ一つの体験を深く感じ取ります。また、GFMCはゆるく長く続けることを大切にし、GFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFVHにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFVHにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '近郊ハイキング',
  '🥾',
  'GFMCにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFVHにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFMCの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GPMC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは気分や流れに合わせて動くのが自然で、GPMCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPMCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPMCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GPMH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMCは気分や流れに合わせて動くのが自然で、GPMHは計画や段取りがあると安心できます。また、GFMCはゆるく長く続けることを大切にし、GPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '公園ジョギング',
  '🏃',
  'GFMCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '近郊ハイキング',
  '🥾',
  'GFMCにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFMCは気分や流れに合わせて動くのが自然で、GPVCは計画や段取りがあると安心できます。また、GFMCは失敗をさほど引きずらず前に進みやすく、GPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVCにとっては、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPVCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPVCが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMC', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFMCは気分や流れに合わせて動くのが自然で、GPVHは計画や段取りがあると安心できます。また、GFMCは失敗をさほど引きずらず前に進みやすく、GPVHは一つ一つの体験を深く感じ取ります。また、GFMCはゆるく長く続けることを大切にし、GPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFMCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVHにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHが基本的な枠組みを設けることでGFMCが安心して即興的に動け、GFMCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GFVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFMHは失敗をさほど引きずらず前に進みやすく、GFVCは一つ一つの体験を深く感じ取ります。また、GFMHは挑戦や達成からエネルギーを得る一方、GFVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFMHにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFVCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '近郊ハイキング',
  '🥾',
  'GFMHにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFVCにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVCにとっての安心材料になります。GFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GFVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは失敗をさほど引きずらず前に進みやすく、GFVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFMHにとって、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFVHにとっては、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'テニス・バドミントン体験',
  '🎾',
  'GFMHにとって、ミスしてもすぐ次のポイントに気持ちを切り替えられます。また、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。

GFVHにとっては、体験クラスや壁打ちから始めることで「うまくできるか」というプレッシャーを下げられます。相手が同じレベルなら失敗が互いへの負担になりません。また、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '近郊ハイキング',
  '🥾',
  'GFMHにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFVHにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFMHの「大丈夫、気にしなくていいよ」という姿勢がGFVHにとっての安心材料になります。GFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GPMC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFMHは気分や流れに合わせて動くのが自然で、GPMCは計画や段取りがあると安心できます。また、GFMHは挑戦や達成からエネルギーを得る一方、GPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '公園ジョギング',
  '🏃',
  'GFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '近郊ハイキング',
  '🥾',
  'GFMHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMCにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GPMH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは気分や流れに合わせて動くのが自然で、GPMHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '公園ジョギング',
  '🏃',
  'GFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPMHにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPMHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFMHは気分や流れに合わせて動くのが自然で、GPVCは計画や段取りがあると安心できます。また、GFMHは失敗をさほど引きずらず前に進みやすく、GPVCは一つ一つの体験を深く感じ取ります。また、GFMHは挑戦や達成からエネルギーを得る一方、GPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFMH', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFMHは気分や流れに合わせて動くのが自然で、GPVHは計画や段取りがあると安心できます。また、GFMHは失敗をさほど引きずらず前に進みやすく、GPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPVHにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPVHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHが基本的な枠組みを設けることでGFMHが安心して即興的に動け、GFMHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'GFVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVCはゆるく長く続けることを大切にし、GFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GFVCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFVHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFVHが活動の意欲を引き上げ、GFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFVHにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFVHが活動の意欲を引き上げ、GFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFVHにとっては、慣れてくると上級クラスやホットヨガへの発展があります。体の柔軟性・体幹という別軸の目標設定ができます。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFVHが活動の意欲を引き上げ、GFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'GPMC', '2人ともグループや他者との共有からエネルギーを得ます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは気分や流れに合わせて動くのが自然で、GPMCは計画や段取りがあると安心できます。また、GFVCは体験を深く感じ取り丁寧に向き合う一方、GPMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMCにとっては、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPMCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPMCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'GPMH', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFVCは気分や流れに合わせて動くのが自然で、GPMHは計画や段取りがあると安心できます。また、GFVCは体験を深く感じ取り丁寧に向き合う一方、GPMHは失敗をすぐに切り替えて前に進みます。また、GFVCはゆるく長く続けることを大切にし、GPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFVCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMHにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFVCは気分や流れに合わせて動くのが自然で、GPVCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFVCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPVCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPVCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVC', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVCは気分や流れに合わせて動くのが自然で、GPVHは計画や段取りがあると安心できます。また、GFVCはゆるく長く続けることを大切にし、GPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHが基本的な枠組みを設けることでGFVCが安心して即興的に動け、GFVCがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'GPMC', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFVHは気分や流れに合わせて動くのが自然で、GPMCは計画や段取りがあると安心できます。また、GFVHは体験を深く感じ取り丁寧に向き合う一方、GPMCは失敗をすぐに切り替えて前に進みます。また、GFVHは挑戦や達成からエネルギーを得る一方、GPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMCも細かいことを気にしすぎずに済みます。',
  'GPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'GPMH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは気分や流れに合わせて動くのが自然で、GPMHは計画や段取りがあると安心できます。また、GFVHは体験を深く感じ取り丁寧に向き合う一方、GPMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPMHにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPMHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPMHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPMHも細かいことを気にしすぎずに済みます。',
  'GPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFVHは気分や流れに合わせて動くのが自然で、GPVCは計画や段取りがあると安心できます。また、GFVHは挑戦や達成からエネルギーを得る一方、GPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVCにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVCが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVCも細かいことを気にしすぎずに済みます。',
  'GPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFVH', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFVHは気分や流れに合わせて動くのが自然で、GPVHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHが基本的な枠組みを設けることでGFVHが安心して即興的に動け、GFVHがいることでGPVHも細かいことを気にしすぎずに済みます。',
  'GPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFVH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'GPMH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPMCはゆるく長く続けることを大切にし、GPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPMCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPMHが活動の意欲を引き上げ、GPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '公園ジョギング',
  '🏃',
  'GPMCにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHが活動の意欲を引き上げ、GPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMCにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GPMHにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GPMHが活動の意欲を引き上げ、GPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPMCは失敗をさほど引きずらず前に進みやすく、GPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMCにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMCにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPVCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMC', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPMCは失敗をさほど引きずらず前に進みやすく、GPVHは一つ一つの体験を深く感じ取ります。また、GPMCはゆるく長く続けることを大切にし、GPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPMCにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVHにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVHにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMCにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMCの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'GPVC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPMHは失敗をさほど引きずらず前に進みやすく、GPVCは一つ一つの体験を深く感じ取ります。また、GPMHは挑戦や達成からエネルギーを得る一方、GPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPMHにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMHにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVCにとっての安心材料になります。GPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPMH', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPMHは失敗をさほど引きずらず前に進みやすく、GPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPMHにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPVHにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  '公園ジョギング',
  '🏃',
  'GPMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPMHにとって、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPVHにとっては、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPMHの「大丈夫、気にしなくていいよ」という姿勢がGPVHにとっての安心材料になります。GPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPMH' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPVC', 'GPVH', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPVCはゆるく長く続けることを大切にし、GPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPVCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPVHが活動の意欲を引き上げ、GPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'スイミング',
  '🏊',
  'GPVCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPVHにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPVHが活動の意欲を引き上げ、GPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPVCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPVHが活動の意欲を引き上げ、GPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPVC' AND type_b = 'GPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;
