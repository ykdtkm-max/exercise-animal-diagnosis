BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SFMH', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFMCはゆるく長く続けることを大切にし、SFMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFMCにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFMHにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFMHが活動の意欲を引き上げ、SFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFMHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFMHが活動の意欲を引き上げ、SFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFMHにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFMHが活動の意欲を引き上げ、SFMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SFVC', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFMCは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SFVCにとっては、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFVCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SFVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、SFMCは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。また、SFMCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFMCにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFVHにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFVHにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFMCの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SPMC', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFMCは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'SFMCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPMCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPMCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SPMH', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFMCは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。また、SFMCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SPVC', '2人ともひとりで完結するスタイルを好みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFMCは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。また、SFMCは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFMCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPVCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPVCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMC', 'SPVH', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFMCは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。また、SFMCは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。また、SFMCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHが基本的な枠組みを設けることでSFMCが安心して即興的に動け、SFMCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SFVC', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、SFMHは失敗をさほど引きずらず前に進みやすく、SFVCは一つ一つの体験を深く感じ取ります。また、SFMHは挑戦や達成からエネルギーを得る一方、SFVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFMHにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFVCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFVCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVCにとっての安心材料になります。SFVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SFVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFMHは失敗をさほど引きずらず前に進みやすく、SFVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFMHにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFVHにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFVHにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFMHの「大丈夫、気にしなくていいよ」という姿勢がSFVHにとっての安心材料になります。SFVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SPMC', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFMHは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。また、SFMHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMCにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SPMH', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFMHは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPMHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPMHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPMHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SPVC', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFMHは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。また、SFMHは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。また、SFMHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVCにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFMH', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFMHは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。また、SFMHは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFMHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFMHにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVHにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVHが基本的な枠組みを設けることでSFMHが安心して即興的に動け、SFMHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVC', 'SFVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFVCはゆるく長く続けることを大切にし、SFVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'SFVCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFVHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFVHが活動の意欲を引き上げ、SFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFVHにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFVHが活動の意欲を引き上げ、SFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFVHにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFVHが活動の意欲を引き上げ、SFVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SFVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVC', 'SPMC', '2人ともひとりで完結するスタイルを好みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFVCは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。また、SFVCは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFVCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPMCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPMCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVC', 'SPMH', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFVCは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。また、SFVCは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。また、SFVCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFVCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVC', 'SPVC', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFVCは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'SFVCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPVCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPVCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPVCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVCが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVC', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFVCは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。また、SFVCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFVCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVCにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHが基本的な枠組みを設けることでSFVCが安心して即興的に動け、SFVCがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVH', 'SPMC', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFVHは気分や流れに合わせて動くのが自然で、SPMCは計画や段取りがあると安心できます。また、SFVHは体験を深く感じ取り丁寧に向き合う一方、SPMCは失敗をすぐに切り替えて前に進みます。また、SFVHは挑戦や達成からエネルギーを得る一方、SPMCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMCにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMCも細かいことを気にしすぎずに済みます。',
  'SPMCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVH', 'SPMH', '2人ともひとりで完結するスタイルを好みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFVHは気分や流れに合わせて動くのが自然で、SPMHは計画や段取りがあると安心できます。また、SFVHは体験を深く感じ取り丁寧に向き合う一方、SPMHは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMHにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPMHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPMHも細かいことを気にしすぎずに済みます。',
  'SPMHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVH', 'SPVC', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFVHは気分や流れに合わせて動くのが自然で、SPVCは計画や段取りがあると安心できます。また、SFVHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVCにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVCが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVCも細かいことを気にしすぎずに済みます。',
  'SPVCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFVH', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFVHは気分や流れに合わせて動くのが自然で、SPVHは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFVHにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVHにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPVHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFVHにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHが基本的な枠組みを設けることでSFVHが安心して即興的に動け、SFVHがいることでSPVHも細かいことを気にしすぎずに済みます。',
  'SPVHは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFVH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPMC', 'SPMH', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SPMCはゆるく長く続けることを大切にし、SPMHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPMCにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHが活動の意欲を引き上げ、SPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHが活動の意欲を引き上げ、SPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHが活動の意欲を引き上げ、SPMCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPMH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPMC', 'SPVC', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SPMCは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SPMCにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPVCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。

SPVCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPMC', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、SPMCは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。また、SPMCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPMCにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMCにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMCの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPMCは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPMH', 'SPVC', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、SPMHは失敗をさほど引きずらず前に進みやすく、SPVCは一つ一つの体験を深く感じ取ります。また、SPMHは挑戦や達成からエネルギーを得る一方、SPVCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMHにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMHにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVCにとっての安心材料になります。SPVCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPMHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPMH', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SPMHは失敗をさほど引きずらず前に進みやすく、SPVHは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPMHにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMHにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPVHにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPMHにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPMHの「大丈夫、気にしなくていいよ」という姿勢がSPVHにとっての安心材料になります。SPVHが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPVHは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPMHは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPMH' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPVC', 'SPVH', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SPVCはゆるく長く続けることを大切にし、SPVHは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'スイミング',
  '🏊',
  'SPVCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPVHが活動の意欲を引き上げ、SPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPVCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPVHが活動の意欲を引き上げ、SPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPVCにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPVHが活動の意欲を引き上げ、SPVCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPVHのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPVCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPVC' AND type_b = 'SPVH'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;COMMIT;
