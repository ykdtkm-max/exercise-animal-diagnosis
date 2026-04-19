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

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GFTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFACは失敗をさほど引きずらず前に進みやすく、GFTDは一つ一つの体験を深く感じ取ります。また、GFACはゆるく長く続けることを大切にし、GFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFTDにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFTDにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFTDにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFACの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GPAC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは気分や流れに合わせて動くのが自然で、GPACは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPACにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPACが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GPAD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFACは気分や流れに合わせて動くのが自然で、GPADは計画や段取りがあると安心できます。また、GFACはゆるく長く続けることを大切にし、GPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFACにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPADにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPADが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFACは気分や流れに合わせて動くのが自然で、GPTCは計画や段取りがあると安心できます。また、GFACは失敗をさほど引きずらず前に進みやすく、GPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFACにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTCにとっては、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTCが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPTCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPTCが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAC', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFACは気分や流れに合わせて動くのが自然で、GPTDは計画や段取りがあると安心できます。また、GFACは失敗をさほど引きずらず前に進みやすく、GPTDは一つ一つの体験を深く感じ取ります。また、GFACはゆるく長く続けることを大切にし、GPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFACにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTDにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTDが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFACにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDが基本的な枠組みを設けることでGFACが安心して即興的に動け、GFACがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GFTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、GFADは失敗をさほど引きずらず前に進みやすく、GFTCは一つ一つの体験を深く感じ取ります。また、GFADは挑戦や達成からエネルギーを得る一方、GFTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFADにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFTCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFTCにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTCにとっての安心材料になります。GFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GFTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは失敗をさほど引きずらず前に進みやすく、GFTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ダンスフィットネス体験',
  '💃',
  'GFADにとって、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFTDにとっては、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、ミスしてもすぐ次のポイントに気持ちを切り替えられます。また、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。

GFTDにとっては、体験クラスや壁打ちから始めることで「うまくできるか」というプレッシャーを下げられます。相手が同じレベルなら失敗が互いへの負担になりません。また、相手がいないと成立しない活動のため、二人の呼吸を合わせる感覚が生まれます。うまくラリーが続いたときの一体感は他の活動にはない体験です。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFTDにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFADの「大丈夫、気にしなくていいよ」という姿勢がGFTDにとっての安心材料になります。GFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GPAC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GFADは気分や流れに合わせて動くのが自然で、GPACは計画や段取りがあると安心できます。また、GFADは挑戦や達成からエネルギーを得る一方、GPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPACにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPACが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPACにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPACが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GPAD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは気分や流れに合わせて動くのが自然で、GPADは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPADにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPADが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFADは気分や流れに合わせて動くのが自然で、GPTCは計画や段取りがあると安心できます。また、GFADは失敗をさほど引きずらず前に進みやすく、GPTCは一つ一つの体験を深く感じ取ります。また、GFADは挑戦や達成からエネルギーを得る一方、GPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTCが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFAD', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFADは気分や流れに合わせて動くのが自然で、GPTDは計画や段取りがあると安心できます。また、GFADは失敗をさほど引きずらず前に進みやすく、GPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPTDにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPTDが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDが基本的な枠組みを設けることでGFADが安心して即興的に動け、GFADがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'GFTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTCはゆるく長く続けることを大切にし、GFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GFTCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFTDにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GFTDが活動の意欲を引き上げ、GFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFTDにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GFTDが活動の意欲を引き上げ、GFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、強度が低く体への負担が少ない活動です。「ゆっくり丁寧に動く」というヨガの性質がCタイプの運動スタイルと一致します。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFTDにとっては、慣れてくると上級クラスやホットヨガへの発展があります。体の柔軟性・体幹という別軸の目標設定ができます。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GFTDが活動の意欲を引き上げ、GFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'GPAC', '2人ともグループや他者との共有からエネルギーを得ます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは気分や流れに合わせて動くのが自然で、GPACは計画や段取りがあると安心できます。また、GFTCは体験を深く感じ取り丁寧に向き合う一方、GPACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFTCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、「この動きで腹部を感じましょう」という内側への集中が、直感的・感覚的な人に向いています。思考より感覚で動く活動です。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPACにとっては、各エクササイズに目的（体幹強化・姿勢改善など）があり、何のためにこの動きをするかが明確です。段階的な難易度設定もあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPACが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPACにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPACが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'GPAD', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFTCは気分や流れに合わせて動くのが自然で、GPADは計画や段取りがあると安心できます。また、GFTCは体験を深く感じ取り丁寧に向き合う一方、GPADは失敗をすぐに切り替えて前に進みます。また、GFTCはゆるく長く続けることを大切にし、GPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFTCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPADにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPADが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GFTCは気分や流れに合わせて動くのが自然で、GPTCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GFTCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPTCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、朝の時間を誰かと共有するという体験が「今日も一日頑張ろう」という前向きなエネルギーになります。

GPTCが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTC', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTCは気分や流れに合わせて動くのが自然で、GPTDは計画や段取りがあると安心できます。また、GFTCはゆるく長く続けることを大切にし、GPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDが基本的な枠組みを設けることでGFTCが安心して即興的に動け、GFTCがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'GPAC', '2人ともグループや他者との共有からエネルギーを得ますという共通点があります。その一方で、GFTDは気分や流れに合わせて動くのが自然で、GPACは計画や段取りがあると安心できます。また、GFTDは体験を深く感じ取り丁寧に向き合う一方、GPACは失敗をすぐに切り替えて前に進みます。また、GFTDは挑戦や達成からエネルギーを得る一方、GPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPACにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPACが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPACが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPACも細かいことを気にしすぎずに済みます。',
  'GPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'GPAD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは気分や流れに合わせて動くのが自然で、GPADは計画や段取りがあると安心できます。また、GFTDは体験を深く感じ取り丁寧に向き合う一方、GPADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'GFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、振り付けを完璧に覚えることよりも音楽に体を任せることが楽しいです。「なんとなく体が動く」感覚を大切にできます。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPADにとっては、振り付けのパターンを覚えていく過程が楽しいです。「このパートが完璧にできた」という積み上げの実感があります。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPADが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPADが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPADも細かいことを気にしすぎずに済みます。',
  'GPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GFTDは気分や流れに合わせて動くのが自然で、GPTCは計画や段取りがあると安心できます。また、GFTDは挑戦や達成からエネルギーを得る一方、GPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTCが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTCにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTCが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTCが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTCも細かいことを気にしすぎずに済みます。',
  'GPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、GFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GFTD', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GFTDは気分や流れに合わせて動くのが自然で、GPTDは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'GFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDが基本的な枠組みを設けることでGFTDが安心して即興的に動け、GFTDがいることでGPTDも細かいことを気にしすぎずに済みます。',
  'GPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GFTD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'GPAD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、GPACはゆるく長く続けることを大切にし、GPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPACにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPADにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPADが活動の意欲を引き上げ、GPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADが活動の意欲を引き上げ、GPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GPADにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、「このホールドこう使うといいよ」というアドバイスのやり取りや、完登した瞬間の祝福など、コミュニケーションが自然に生まれます。

GPADが活動の意欲を引き上げ、GPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、GPACは失敗をさほど引きずらず前に進みやすく、GPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'GPACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPTCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAC', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPACは失敗をさほど引きずらず前に進みやすく、GPTDは一つ一つの体験を深く感じ取ります。また、GPACはゆるく長く続けることを大切にし、GPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPACにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTDにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTDにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPACにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPACの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'GPTC', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、GPADは失敗をさほど引きずらず前に進みやすく、GPTCは一つ一つの体験を深く感じ取ります。また、GPADは挑戦や達成からエネルギーを得る一方、GPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPADにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPADにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、クラス全体で同じ動きをするという場の構造が安心感になります。インストラクターの指示に従う形式で「何をすべきか」が常に明確です。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTCにとっての安心材料になります。GPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、GPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPAD', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、GPADは失敗をさほど引きずらず前に進みやすく、GPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ピラティス体験',
  '🤸',
  'GPADにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPTDにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、インストラクターの指示に全員が従うという均一の動きがグループの連帯感を生みます。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、「一緒に走った」という体験の共有がモチベーションになります。走り終わった後の達成感を誰かと分かち合える場になります。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPADにとって、間違えても笑い飛ばして続けられます。完璧さより楽しさを優先できる場面で力を発揮します。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPTDにとっては、みんなが同じ動きをしているという均一性が安心材料になります。「私だけ間違えている」という恥ずかしさは比較的少ない環境です。また、音楽に合わせてみんなで動くという一体感が最大の魅力です。グループのエネルギーが個人のテンションを引き上げます。

GPADの「大丈夫、気にしなくていいよ」という姿勢がGPTDにとっての安心材料になります。GPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'GPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'GPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPAD' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('GPTC', 'GPTD', '2人ともグループや他者との共有からエネルギーを得ます・2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、GPTCはゆるく長く続けることを大切にし、GPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'GPTCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、歩きながら自然と会話が生まれ、山頂到達や距離完走という共有できる達成感も得やすいです。グループで動く心地よさがそのまま運動になります。

GPTDが活動の意欲を引き上げ、GPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPTCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPTDにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、互いのフォームを参考にしたり、同じ距離を泳いだ達成感を共有したりできます。スイミングスクールのクラスは自然とグループ感が生まれます。

GPTDが活動の意欲を引き上げ、GPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'GPTCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、並走しながら会話が弾みます。「あのお店入ろう」という提案を互いにできるため、共同で街を探索する感覚が生まれます。

GPTDが活動の意欲を引き上げ、GPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'GPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'GPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'GPTC' AND type_b = 'GPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;
