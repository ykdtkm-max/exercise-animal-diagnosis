BEGIN;
INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SFAD', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFACはゆるく長く続けることを大切にし、SFADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFACにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFADにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFADが活動の意欲を引き上げ、SFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFADにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFADが活動の意欲を引き上げ、SFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFADにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFADが活動の意欲を引き上げ、SFACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SFTC', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFACは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、「今日は短くていいや」という調整が罪悪感なくできます。サボった日があっても翌日に戻りやすいです。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SFTCにとっては、朝の涼しい時間・自然の中という環境が「うまくやらなきゃ」という感覚を和らげます。ただ歩くだけでOKという活動です。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFTCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SFTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、SFACは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。また、SFACはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFACにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFTDにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFTDにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFACの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SPAC', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いです・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFACは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'SFACにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPACにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPACが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPACにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPACが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPACにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPACが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SPAD', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFACは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。また、SFACはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFACにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPADが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SPTC', '2人ともひとりで完結するスタイルを好みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFACは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。また、SFACは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFACにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPTCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPTCが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTCが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAC', 'SPTD', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFACは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。また、SFACは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。また、SFACはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFACにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFACにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDが基本的な枠組みを設けることでSFACが安心して即興的に動け、SFACがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SFTC', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にしますという共通点があります。その一方で、SFADは失敗をさほど引きずらず前に進みやすく、SFTCは一つ一つの体験を深く感じ取ります。また、SFADは挑戦や達成からエネルギーを得る一方、SFTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFADにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFTCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFTCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTCにとっての安心材料になります。SFTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SFTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFADは失敗をさほど引きずらず前に進みやすく、SFTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ボルダリング体験',
  '🧗',
  'SFADにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFTDにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、多少ペースが乱れたり予定より遅くなっても気にならず、余裕を持って楽しめます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFTDにとっては、自分のペースで進めるため「うまくできなかった」という体験が起きにくく、「歩いた」という事実だけで満足感が得られます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFADの「大丈夫、気にしなくていいよ」という姿勢がSFTDにとっての安心材料になります。SFTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SPAC', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SFADは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。また、SFADは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPACにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPACが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPACにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPACが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPACにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPACが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SPAD', '2人ともひとりで完結するスタイルを好みます・2人とも失敗をひきずらず切り替えが早いです・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFADは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPADにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPADが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPADにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPADが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SPTC', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFADは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。また、SFADは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。また、SFADは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTCが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTCにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTCが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFAD', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFADは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。また、SFADは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFADにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFADにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTDにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTDが基本的な枠組みを設けることでSFADが安心して即興的に動け、SFADがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTC', 'SFTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画より流れや直感を大切にします・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFTCはゆるく長く続けることを大切にし、SFTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '近郊ハイキング',
  '🥾',
  'SFTCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFTDにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SFTDが活動の意欲を引き上げ、SFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、ゆっくり漕げばいくらでも穏やかな活動になります。立ち止まって休憩することも自由です。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFTDにとっては、エリアを広げたり距離を伸ばしたりすることで強度を上げられます。速く走ること自体を目的にもできます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SFTDが活動の意欲を引き上げ、SFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFTDにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SFTDが活動の意欲を引き上げ、SFTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SFTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTC', 'SPAC', '2人ともひとりで完結するスタイルを好みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFTCは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。また、SFTCは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SFTCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPACにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPACが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPACにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPACが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTC', 'SPAD', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFTCは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。また、SFTCは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。また、SFTCはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFTCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTC', 'SPTC', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SFTCは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '朝散歩・アウトドアヨガ',
  '🌿',
  'SFTCにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTCにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPTCが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、ポーズの微妙な感覚や体の変化を感じながら動くことが得意です。思考より感覚で動くヨガの性質が自然に合います。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPTCにとっては、スタジオ選び・曜日・予約というプロセスを自然にこなせます。「予約した」という事実が実行へのコミットメントになります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPTCが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTCが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTC', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFTCは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。また、SFTCはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFTCにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTDが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTCにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDが基本的な枠組みを設けることでSFTCが安心して即興的に動け、SFTCがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTD', 'SPAC', '2人ともひとりで完結するスタイルを好みますという共通点があります。その一方で、SFTDは気分や流れに合わせて動くのが自然で、SPACは計画や段取りがあると安心できます。また、SFTDは体験を深く感じ取り丁寧に向き合う一方、SPACは失敗をすぐに切り替えて前に進みます。また、SFTDは挑戦や達成からエネルギーを得る一方、SPACはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPACにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPACが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPACにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPACが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、距離やタイムを決めず「疲れたら上がる」「気持ちよかったら続ける」という泳ぎ方が成立します。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACにとっては、泳ぐ距離・タイムの記録・フォームの改善など、数値化・目標化できる要素が豊富です。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPACも細かいことを気にしすぎずに済みます。',
  'SPACは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTD', 'SPAD', '2人ともひとりで完結するスタイルを好みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFTDは気分や流れに合わせて動くのが自然で、SPADは計画や段取りがあると安心できます。また、SFTDは体験を深く感じ取り丁寧に向き合う一方、SPADは失敗をすぐに切り替えて前に進みます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、「なんとなくあのホールドを触ってみたい」という直感がボルダリングでは最良の判断になることが多いです。頭より体で考える活動です。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADにとっては、課題にはグレード（難易度）があり、「この色を全部クリアする」という段階的な目標設定ができます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、決まったルートも記録も必要なく、「今日はこっちを歩きたい」という気分で動けます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPADにとっては、毎朝同じ時間に行うというルーティン化がしやすい活動です。週に何回というペースを自分で設定し達成を記録できます。また、一人の時間を大切にしつつ自分のペースで体を動かせます。「誰かと一緒に黙って歩く」という距離感が成立する活動です。

SPADが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPADも細かいことを気にしすぎずに済みます。',
  'SPADは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTD', 'SPTC', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SFTDは気分や流れに合わせて動くのが自然で、SPTCは計画や段取りがあると安心できます。また、SFTDは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTCにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTCが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTCにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTCが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTCにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTCが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTCも細かいことを気にしすぎずに済みます。',
  'SPTCは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。 また、SFTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SFTD', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも体験を深く感じ取り、理想を持って取り組みます・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SFTDは気分や流れに合わせて動くのが自然で、SPTDは計画や段取りがあると安心できます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'レンタサイクル街歩き',
  '🚴',
  'SFTDにとって、計画なく動けることがこの活動の本質です。ルートを決めず、気分で方向を変えながら走れます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTDにとっては、レンタルの時間枠と返却場所という「外側の制約」が安心材料になります。「この時間内なら何をしても大丈夫」という感覚を持てると、細かいことを気にせず動けます。また、目的地を決めなくても成立する活動です。気になった路地や目についたお店に立ち寄る行動が運動と一体化しており、「運動している感覚」なしに体を動かせます。

SPTDが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、決まったルートや距離に縛られず、気分で折り返したり歩いたりできます。「走りたいだけ走る」というスタイルが成立します。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、距離・タイム・ペースの記録がしやすく、「前回より○秒速くなった」という数値的な成長が可視化できます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SFTDにとって、目的地を厳密に決めなくても成立し、気になった分岐に入ったり気分で立ち止まったりできる柔軟さがあります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDにとっては、ルートや所要時間、標高差などを事前に調べるプロセス自体が楽しみになります。到達・完了という明確なゴールが達成感につながります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDが基本的な枠組みを設けることでSFTDが安心して即興的に動け、SFTDがいることでSPTDも細かいことを気にしすぎずに済みます。',
  'SPTDは何をするのかが事前に分かっていると安心します。大まかな内容・場所・所要時間を伝えておくと、当日スムーズに来てくれます。',
  '詳細な計画は自分の中だけに持っておいて、誘うときは「なんか行かない？」くらいのざっくりさで伝えるのがコツです。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SFTD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPAC', 'SPAD', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも失敗をひきずらず切り替えが早いですという共通点があります。その一方で、SPACはゆるく長く続けることを大切にし、SPADは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPACにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADが活動の意欲を引き上げ、SPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、自分が安心できる難易度の課題だけに取り組めます。強度の上限を自分でコントロールできます。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADにとっては、より難しい課題への挑戦、完登数の更新、グレードの更新など、挑戦の要素が無限にあります。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADが活動の意欲を引き上げ、SPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADが活動の意欲を引き上げ、SPACが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPAD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPAC', 'SPTC', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人ともゆるく安定したペースを好みますという共通点があります。その一方で、SPACは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'ヨガ体験クラス（単発）',
  '🧘',
  'SPACにとって、ポーズが完璧でなくても気にならず、自分なりの解釈で楽しめます。他の人との比較にも影響されにくいです。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPTCにとっては、インストラクターの指示通りに動けばよく、「次に何をすべきか」という判断の負荷がありません。全員が同じポーズをする均一性が安心材料になります。また、体験クラスというフォーマットは継続前提ではないため義務感が発生しません。「今日だけ行く」という設定が参入ハードルを下げ、むしろ満足度が上がりやすいです。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、体幹の難しいポジションを保てなくても「まあいいか」と次に進める柔軟さがあります。また、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。

SPTCにとっては、インストラクターの指示通りに動くだけでよく、「自分でどうすべきか」という判断の負荷が少ないです。また、グループレッスンでも一人一人がマット上で独立して動く形式のため、個人のペースで取り組めます。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPAC', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、SPACは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。また、SPACはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPACにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPACにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPACの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPACは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPACのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPAD', 'SPTC', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っていますという共通点があります。その一方で、SPADは失敗をさほど引きずらず前に進みやすく、SPTCは一つ一つの体験を深く感じ取ります。また、SPADは挑戦や達成からエネルギーを得る一方、SPTCはゆるく無理なく続けることを大切にします。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTCにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPADにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTCにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPADにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTCにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTCにとっての安心材料になります。SPTCが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTCは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。 また、SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。 また、SPADのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTC'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPAD', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも挑戦や追い込みでやる気が出るタイプですという共通点があります。その一方で、SPADは失敗をさほど引きずらず前に進みやすく、SPTDは一つ一つの体験を深く感じ取ります。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  '公園ジョギング',
  '🏃',
  'SPADにとって、多少タイムが悪くても気にせず走れます。走れなかった日があってもすぐに切り替えられます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、自分のペースで走れるため、人と比較する必要がありません。「今日の自分」と向き合うだけで済みます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPADにとって、落ちても「あ、そこか」と切り替えてすぐ試せます。失敗が学習プロセスの一部として自然に組み込まれています。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPTDにとっては、初回は「完璧にやろう」という期待を手放すことが大切です。一つできるたびに大きな達成感があり、むしろ深く感じるTタイプが喜びを受け取りやすいです。また、一人で課題（ルート）に向き合う時間が中心です。周りに人がいても自分の課題に集中できる環境です。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPADにとって、タイムが思ったより遅くても気にせず、次に向けて考えられます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDにとっては、水の中は視界が制限され、他の人と比較しにくい環境です。自分のペースで泳ぐことに集中できます。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPADの「大丈夫、気にしなくていいよ」という姿勢がSPTDにとっての安心材料になります。SPTDが深く感じ取った気づきを伝えることで活動がより豊かになります。',
  'SPTDは「失敗したらどうしよう」という気持ちを持ちやすいです。「うまくできなくていいよ」「私も初めてだよ」という一言が安心感を与えます。',
  'SPADは「大丈夫、行けるよ」という自信を持ちやすいタイプです。あなたが感じている不安を正直に伝えると、自然にサポートしてくれます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPAD' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

INSERT INTO exercise_v2_compat_pairs (type_a, type_b, description)
VALUES ('SPTC', 'SPTD', '2人ともひとりで完結するスタイルを好みます・2人とも計画を立ててから動くスタイルが合っています・2人とも体験を深く感じ取り、理想を持って取り組みますという共通点があります。その一方で、SPTCはゆるく長く続けることを大切にし、SPTDは挑戦や達成を通じてやる気が出てきます。この違いを意識した誘い方をするだけで、2人ともが無理なく楽しめる場が生まれます。')
ON CONFLICT (type_a, type_b) DO UPDATE SET description = EXCLUDED.description;

INSERT INTO exercise_v2_compat_activities
  (pair_id, activity_order, activity_name, activity_emoji, description, tip_a_invites_b, tip_b_invites_a)
SELECT
  id,
  1,
  'スイミング',
  '🏊',
  'SPTCにとって、ゆっくり泳ぐだけでも十分な運動になります。水の抵抗が全身に分散されるため関節への負担が少ないです。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDにとっては、タイム更新・距離更新・種目の習得（クロール→背泳ぎ→平泳ぎ）という挑戦の軸があります。また、レーンで泳ぐ活動は他者と共有する空間でありながら、完全に一人の世界に入れます。水の中では会話がないため、自分のペースに集中できます。

SPTDが活動の意欲を引き上げ、SPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPTCにとって、強度を自分で調整でき、疲れたら休む・ゆっくり歩くというスタイルが自然に許容されます。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDにとっては、距離や累積標高で自分に挑戦する要素があり、「今日はここまで行けた」という更新が満足感になります。また、「気づいたら遠くまで来ていた」という感覚が生まれやすく、記録や目標を意識しなくても体が動きます。「なんとなく来た」が成立する数少ない活動のひとつです。

SPTDが活動の意欲を引き上げ、SPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
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
  'SPTCにとって、ゆっくりでも走れるのがジョギングです。速さにこだわらず、外の空気を感じながら動くことに価値を置けます。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDにとっては、タイムやキロペースの更新、大会への参加など、自分に挑戦する要素が豊富にあります。また、音楽を聴きながら自分のペースで走れます。誰かと一緒でも「一緒にいる」感覚を保ちながら独立したペースで動けます。

SPTDが活動の意欲を引き上げ、SPTCが「もうこのくらいでいいんじゃない」という適切なブレーキになります。どちらかが一方的に引っ張られることなく、ちょうどいいペースが見つかりやすいです。',
  'SPTDのほうがやる気が高い場合があります。「今日はこのくらいで終わりにしよう」という基準を最初に共有しておくとお互いに楽です。',
  'SPTCのペースを尊重することが大切です。「無理しなくていいよ」「休憩しながらでいいから」という言葉を添えると、相手が安心して参加できます。'
FROM exercise_v2_compat_pairs WHERE type_a = 'SPTC' AND type_b = 'SPTD'
ON CONFLICT (pair_id, activity_order) DO UPDATE
  SET activity_name = EXCLUDED.activity_name,
      activity_emoji = EXCLUDED.activity_emoji,
      description = EXCLUDED.description,
      tip_a_invites_b = EXCLUDED.tip_a_invites_b,
      tip_b_invites_a = EXCLUDED.tip_b_invites_a;

COMMIT;COMMIT;
