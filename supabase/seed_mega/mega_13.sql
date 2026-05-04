INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SFMC',
      $j04axp7uj$[{"t":"p","text":"集団での目標達成に情熱を燃やす側と、一人の空間でその時の気分を大切にする側という、運動の前提条件が全て対極にある組み合わせです。チームとしての結束や計画の完遂を重視する側に対し、相手は自由な移動や心身の調和を最優先するため、同じ目的を持って活動することが極めて難しいです。理想の自分を目指して限界に挑む高めるの姿勢と、現在の自分を穏やかに受け入れる整えるの姿勢が交差するため、一回のセッションに求める意味や価値観において決定的な断絶が生じやすいです。"}]$j04axp7uj$::jsonb,
      $jwgvi3ong$[{"t":"p","text":"互いの運動スタイルが根本的に異なることを認め、同じ場所にいながらも別々の活動を行う「並行的な共存」を目指すことが現実的です。"},{"t":"p","text":"事前の計画は「何時にこの場所で会う」といった最小限の約束に留め、相手にチームへの参加や高い負荷を期待しない配慮が必要です。"},{"t":"p","text":"運動そのものを共有するのではなく、運動後の食事や休憩といったリラックスした時間だけを共有する形式をとることが効果的です。"}]$jwgvi3ong$::jsonb,
      $j8tr4u7kv$[{"t":"p","text":"集団での一体感やチームへの貢献を強要された際、一人の時間を重んじる側は強い束縛感と心理的な圧迫を感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画通りにトレーニングを進めたい側と、その日の気分で突発的に行き先や内容を変えたい側との間で、スケジュール調整の段階から深刻なフラストレーションが蓄積します。"},{"t":"p","text":"感情を露わにして目標に向かう側と、淡々と現実を受け止める側との間で、共感の欠如による不満が常態化しやすいです。"}]$j8tr4u7kv$::jsonb,
      $jglahm378$[]$jglahm378$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SFMH',
      $jjp6qe761$[{"t":"p","text":"高い運動強度を求める点においては一致していますが、その実施環境やプロセスにおいて大きな隔たりがある組み合わせです。共に限界まで追い込むことを厭わないため、単発のハードなトレーニングでは互いに刺激し合える可能性があります。しかし、チームとしての結束と計画的な積み上げを重視する側に対し、相手は一人の空間でその瞬間の直感に従って全力を出したいと考えます。理想の自分を目指して感情を燃やす姿勢と、常に一定の精神状態を保ちながら成果を出そうとする姿勢が交差するため、継続的な共同練習において心理的な温度差が生じやすいです。"}]$jjp6qe761$::jsonb,
      $jy07qochk$[{"t":"p","text":"ボルダリングやHIITなど、同じ空間にいながらも各自が自分のペースで限界に挑める種目を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は「この施設のこの時間帯にいる」といった最小限の枠組みに留め、相手をチームの規律に縛り付けないような配慮が求められます。"},{"t":"p","text":"運動後の達成感を共有する時間を短く設定し、互いの「追い込み」を認め合う程度のドライな関係性を維持することが推奨されます。"}]$jy07qochk$::jsonb,
      $jbes0oj2i$[{"t":"p","text":"チームとしての連帯感や定期的な参加を強要された際、一人の時間を重んじる側は強い束縛感と不自由さを感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その場の直感で突発的に強度を上げたい側との間で、トレーニングの安全管理や効率性を巡って意見が対立しやすいです。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々と一人の世界で集中したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$jbes0oj2i$::jsonb,
      $jyk5gofdg$[]$jyk5gofdg$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SFVC',
      $jrr96prr4$[{"t":"p","text":"運動を通じた内面的な変化や感情の揺れを共有しやすいですが、その表現方法や環境設定において大きなズレがある組み合わせです。共になりたいという軸を持つため、理想の姿への憧れや葛藤には共感できます。しかし、チームの熱量の中で計画的に自分を追い込みたい側と、一人の静かな空間でその時の気分に従って心身を整えたい側では、一回のセッションに求める「温度」が決定的に異なります。限界突破を目指す高めるの姿勢と、安らぎを求める整えるの姿勢が対立するため、共同での活動において心理的な摩擦が生じやすいです。"}]$jrr96prr4$::jsonb,
      $jiy3psics$[{"t":"p","text":"互いの運動環境に対するニーズが異なることを前提とし、アプローチの仕方は各自の裁量に完全に委ねる「非干渉の共存」を目指すことが重要です。"},{"t":"p","text":"事前の計画は「この時間帯にこの公園にいる」といった緩やかな約束に留め、相手にチームへの参加や高い負荷を期待しない配慮が必要です。"},{"t":"p","text":"運動そのものよりも、その後のクールダウンや静かな対話の時間を共有し、互いの内面的な気づきを分かち合うことに価値を置くことが効果的です。"}]$jiy3psics$::jsonb,
      $jp5xstp9f$[{"t":"p","text":"チームの一体感や定期的なコミットを強要された際、一人の静かな時間を重んじる側は強い恐怖心と心理的な疲弊を感じ、運動そのものを拒絶するようになります。"},{"t":"p","text":"計画通りに高い負荷をかけたい側と、その日の気分で心身の安らぎを優先したい側との間で、メニューの決定を巡って深刻なフラストレーションが生じます。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、ネガティブな感情が連鎖し、場全体が重苦しい空気に包まれるリスクがあります。"}]$jp5xstp9f$::jsonb,
      $jhzpj8fk9$[]$jhzpj8fk9$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SFVH',
      $j9vrry7gr$[{"t":"p","text":"高い運動強度への要求と、運動を通じた感情の爆発において、非常に強力な共鳴を起こす可能性がある組み合わせです。共に限界まで追い込むことを喜びとし、理想の自分を目指して全力を尽くすため、単発のセッションでは互いに最高の刺激を与え合うことができます。しかし、チームとしての結束と計画的な積み上げを重視する側に対し、相手は一人の空間でその瞬間のスイッチが入った時にだけ全力を出したいと考えます。計画的な管理を重視する姿勢と、その場の衝動を最優先する姿勢が交差するため、日常的な練習の継続性において深刻なズレが生じやすいです。"}]$j9vrry7gr$::jsonb,
      $jf0sh5kjb$[{"t":"p","text":"格闘技のスパーリングやHIITなど、短時間で爆発的なエネルギーを発散できる種目を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は「この時間帯にこの場所で本気でやる」という一点に絞り、相手を長期的なチームの規律に縛り付けない配慮が求められます。"},{"t":"p","text":"運動後の感情的な充足感を共有する時間を設け、互いの「本気」を認め合うことで、心理的な繋がりを深めることが重要です。"}]$jf0sh5kjb$::jsonb,
      $jvts9l6ei$[{"t":"p","text":"チームとしての連帯感や定期的な参加を強要された際、一人の時間を重んじる側は強い束縛感と心理的な反発を感じ、関係が急速に悪化します。"},{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その日の気分や衝動で突発的に強度を上げたい側との間で、トレーニングの規律や安全性を巡って意見が対立しやすいです。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$jvts9l6ei$::jsonb,
      $jp66y1yk6$[]$jp66y1yk6$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SPMC',
      $jtyleprsq$[{"t":"p","text":"長期的な計画性を重んじる点では一致していますが、その実施環境や運動の目的に大きな隔たりがある組み合わせです。共にスケジュール管理や段取りを重視するため、練習の実施時間を合わせること自体は容易です。しかし、チームの熱量の中で限界に挑み続けたい側に対し、相手は一人の静かな空間で淡々と習慣を積み重ね、心身を整えることを最優先します。理想の自分を目指して感情を燃やす姿勢と、常に一定の精神状態を保ちながら現状を維持する姿勢が交差するため、一回のセッションに求める負荷レベルにおいて決定的な温度差が生じやすいです。"}]$jtyleprsq$::jsonb,
      $j0s5vn7tv$[{"t":"p","text":"計画性を共有している強みを活かし、数ヶ月単位の長期的なウォーキング目標やジムの利用時間を共に設定することが効果的です。"},{"t":"p","text":"運動強度の違いを前提とし、同じ施設を利用しながらも活動内容は完全に分離する「並行的な習慣化」を目指すことが重要です。"},{"t":"p","text":"運動そのものよりも、その後の穏やかな対話やログの共有に価値を置き、互いの「継続の型」を尊重し合うことが推奨されます。"}]$j0s5vn7tv$::jsonb,
      $ju7bfrnis$[{"t":"p","text":"チームの一体感や高い目標へのコミットを強要された際、一人の静かなルーティンを重んじる側は強い心理的な抵抗とストレスを感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画を重視するあまり、目標設定の高さやメニューの厳密さを巡って意見が対立し、妥協点を見出すのに多大な時間を要することがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、常に冷静で淡々と活動したい側との間で、共感の欠如による不満が常態化しやすいです。"}]$ju7bfrnis$::jsonb,
      $jb6eb48ol$[]$jb6eb48ol$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SPMH',
      $jkxdbtzrs$[{"t":"p","text":"高い運動強度への要求と、緻密な計画性において、非常に高いレベルで切磋琢磨できる組み合わせです。共に限界まで追い込むことを当然とし、目標から逆算したトレーニングを完遂する規律を持っているため、競技において圧倒的な成果を出すことが可能です。しかし、チームとしての結束と感情的な燃え上がりを重視する側に対し、相手は一人の空間で淡々と自己の記録を更新することにのみ集中したいと考えます。情熱を燃料とする姿勢と、冷静なデータ管理を武器とする姿勢が交差するため、勝負どころでの振る舞いにおいて心理的な温度差が生じやすいです。"}]$jkxdbtzrs$::jsonb,
      $jwkvfgvgg$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、同じ大会や記録会に向けて各自が自分のメニューをこなす「同一空間・別メニュー」の形式をとることが効果的です。"},{"t":"p","text":"事前の計画には具体的な数値目標とタイムスケジュールを盛り込み、互いの領域に干渉しないためのルールを明確にすることが求められます。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果やデータの更新を称え合うことに主眼を置き、過度な感情的連帯を求めないドライな交流を心がけることが重要です。"}]$jwkvfgvgg$::jsonb,
      $j7z10tekp$[{"t":"p","text":"チームの一体感や感情的な結束を強要された際、一人の世界で集中したい側は強い不快感と心理的な疲弊を感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画を重視するあまり、トレーニングの「正解」を巡って意見が対立し、激しい主導権争いに発展するリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、常に冷静で淡々と活動したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$j7z10tekp$::jsonb,
      $ji5x6j29e$[]$ji5x6j29e$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SPVC',
      $j9byt37e1$[{"t":"p","text":"長期的な計画性を重んじ、運動を通じた内面的な変化を大切にする点において、安定した協力関係を築ける組み合わせです。共にスケジュール管理や型を重視するため、練習の実施時間を合わせることや、事前の段取りにおいて摩擦が少なく、スムーズに進行できます。しかし、チームの熱量の中で限界に挑み続けたい側に対し、相手は一人の空間で自分の決めたルーティンを完璧にこなし、心身を整えることを最優先します。限界突破を追求する高めるの姿勢と、調和と維持を目的とする整えるの姿勢が交差するため、一回のセッションに求める負荷レベルにおいて温度差が生じやすいです。"}]$j9byt37e1$::jsonb,
      $jxuq1a6ho$[{"t":"p","text":"計画性を共有している強みを活かし、互いのルーティンを崩さない範囲での定期的な共同トレーニングをスケジュールに組み込むことが効果的です。"},{"t":"p","text":"運動強度の違いを解消するために、同じ施設を利用しながらも活動内容は完全に分離し、最後に短時間の対話やクールダウンだけを共有する形式をとることが重要です。"},{"t":"p","text":"運動後の感情的なシェアを大切にし、成果だけでなく「いかに自分の型を守れたか」という過程を認め合う時間を設けることが推奨されます。"}]$jxuq1a6ho$::jsonb,
      $jyffg5w18$[{"t":"p","text":"チームの一体感や高い負荷へのコミットを強要された際、一人の静かなルーティンを重んじる側は強い心理的な抵抗と自由の剥奪を感じ、運動そのものが苦痛になってしまいます。"},{"t":"p","text":"計画を重視するあまり、メニューの変更や突発的なイベントへの対応を巡って意見が対立し、激しいフラストレーションが生じるリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、ネガティブな感情が連鎖し、互いの手法を否定し合う結果になります。"}]$jyffg5w18$::jsonb,
      $jhpzhuvts$[]$jhpzhuvts$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'SPVH',
      $jfq0aq995$[{"t":"p","text":"高い運動強度への要求、緻密な計画性、そして運動を通じた自己変革において、最も高い次元で共鳴できる組み合わせです。共に限界まで追い込むことを当然とし、理想の自分を目指して全力を尽くすため、単発のセッションでは互いに最高の刺激を与え合うことができます。しかし、チームとしての結束と感情的な燃え上がりを重視する側に対し、相手は一人の空間で完璧に自己を管理し、孤高の境地で限界を超えたいと考えます。情熱を燃料とする姿勢と、冷徹な自己規律を武器とする姿勢が交差するため、共同練習の形式において微細な温度差が生じやすいです。"}]$jfq0aq995$::jsonb,
      $j4wejaley$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、同じ大会や競技会に向けて各自が自分のメニューを完遂する「同一空間・別ライン」の形式をとることが効果的です。"},{"t":"p","text":"事前の計画には具体的な数値目標とタイムスケジュールを盛り込み、互いの領域に干渉しないためのルールを明確にすることが求められます。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果だけでなく、その過程での互いの献身や克己心を称え合う時間を設けることが重要です。"}]$j4wejaley$::jsonb,
      $j9enmu3tw$[{"t":"p","text":"チームの一体感や感情的な結束を強要された際、一人の世界で集中したい側は強い不快感と心理的な疲弊を感じ、関係が急速に冷え込みます。"},{"t":"p","text":"計画を重視するあまり、トレーニングの「正解」を巡って意見が対立し、激しい主導権争いに発展するリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、不調時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$j9enmu3tw$::jsonb,
      $jjj5zmdrh$[]$jjj5zmdrh$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (1, 1, 'S', '集中して何かに取り組みたいとき、まず一人になれる環境を探す方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (2, 1, 'G', '誰かと一緒にいると、一人のときより自然と活力がわいてくる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (3, 1, 'G', '何かに取り組もうとするとき、一人でやるより仲間がいた方が動き出しやすい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (4, 1, 'S', 'グループでの活動や打ち合わせが続くと、一人になりたいという欲求が強くなる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (5, 1, 'S', '疲れたとき、人に会うより一人の時間を取る方が回復できる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (6, 1, 'G', '新しいコミュニティや集まりに参加することに、あまり抵抗がない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (7, 1, 'S', '自分のペースで進められることが、何かに取り組む上で特に大切にしていることのひとつだ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (8, 1, 'G', '友人が何か新しいことを始めたと聞くと、自分も一緒にやってみたいと思うことが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (9, 2, 'F', '気が向いたことは、計画を立てる前にとりあえず始めてしまうことが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (10, 2, 'P', '何かを始める前に、まずおおまかな計画や手順を考えてから動く方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (11, 2, 'F', '細かいスケジュールや手順を決められると、かえってやる気がそがれることがある') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (12, 2, 'P', '見通しが立っていると安心して取り組めるし、立っていないと落ち着かない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (13, 2, 'F', 'その日の気分に合わせて行動できる方が、決めたことを淡々とこなすより自分らしい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (14, 2, 'P', '急に予定が変わったり、段取りが狂ったりすると、気分が乱れやすい') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (15, 2, 'P', 'やるべきことをリスト化したり整理したりすることに、ある種の達成感を覚える') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (16, 2, 'F', '先の予定をあまり決めず、直前に判断することの方が多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (17, 3, 'M', 'うまくいかないことがあっても、比較的早く気持ちを切り替えられる方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (18, 3, 'V', '批判されたり評価が低かったりすると、しばらく引きずってしまう方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (19, 3, 'M', '完璧にできなくてもとりあえず前に進む、という考え方が自分には合っている') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (20, 3, 'V', '周りと比べて自分が遅れていると感じると、やる気が落ちることが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (21, 3, 'M', '何かで行き詰まったとき、「次に何ができるか」を考える方に気持ちが向く') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (22, 3, 'V', '調子の良い日と悪い日の差が大きく、気分のムラを感じることが多い') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (23, 3, 'M', '一度やめてしまったことでも、また始めることにあまり心理的な抵抗がない') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (24, 3, 'V', '調子が出ていないときは、無理に取り組んでも意味がないと感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (25, 4, 'C', '自分のペースで無理なく続けることを、大きな成果より優先する方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (26, 4, 'D', '高い目標や難しい課題に向かうとき、燃えてくるような感覚がある') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (27, 4, 'C', '少し余裕のある目標設定の方が、高い目標より自分には合っていると感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (28, 4, 'D', '何かに取り組んでいて「もう少し頑張れる」と感じると、自然と限界を試したくなる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (29, 4, 'C', '疲れたり消耗しそうなときは、ペースを落とすか休む方を迷わず選ぶ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (30, 4, 'D', '高い基準で結果を出すために、きつい局面も乗り越えることにモチベーションを感じる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (31, 4, 'C', '過度なプレッシャーやノルマは、意欲を下げる方だ') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_questions (order_index, axis, polarity, question_text) VALUES (32, 4, 'D', 'ストイックに努力を重ねている人を見ると、自分もそうありたいという気持ちになる') ON CONFLICT (order_index) DO UPDATE SET axis = EXCLUDED.axis, polarity = EXCLUDED.polarity, question_text = EXCLUDED.question_text;
INSERT INTO public.exercise_app_settings (setting_key, setting_value) VALUES ('option_labels', $j8dvqgj1g$["とても賛成","賛成","どちらかといえば賛成","どちらかといえば反対","反対","とても反対"]$j8dvqgj1g$::jsonb) ON CONFLICT (setting_key) DO UPDATE SET setting_value = EXCLUDED.setting_value;