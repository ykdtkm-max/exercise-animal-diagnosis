INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'GPVH', 'GFVC',
      $jhuiwey0e$[{"t":"p","text":"集団での活動を好み、運動を通じた感情の起伏や内面的な変化を共有しやすい組み合わせです。共になりたいという軸を持つため、目標に向かう過程での葛藤や喜びを深く分かち合うことができます。しかし、計画的に高い成果を目指して自分を追い込みたい側と、その日の気分に合わせて周囲との調和や安心感を優先したい側では、一回の練習に求める「質」が異なります。限界突破を追求する高めるの姿勢と、心身の平穏を保つ整えるの姿勢が対立するため、求める負荷レベルの調整において繊細な配慮が必要となります。"}]$jhuiwey0e$::jsonb,
      $jho111j9k$[{"t":"p","text":"集団での活動という共通項を活かし、チームとしての連帯感を感じられる環境を選ぶことが重要です。"},{"t":"p","text":"事前の計画には「全員で楽しむ時間」と「個々が追い込む時間」を明確に分け、相手がプレッシャーを感じずに参加できる余白を残すことが求められます。"},{"t":"p","text":"運動強度の差を埋めるために、一つの種目の中で役割を分担することが効果的です。一方が競技として本気で取り組み、もう一方がサポートや応援を行うなど、並行して異なる活動を許容する柔軟な姿勢が関係を深めます。"}]$jho111j9k$::jsonb,
      $jth47tvea$[{"t":"p","text":"計画通りに高い負荷をかけたい側と、その日の気分で周囲との交流を優先したい側との間で、練習の優先順位を巡ってフラストレーションが生じやすいです。"},{"t":"p","text":"目標未達時や不調時に双方が感情的に熱くなりやすいため、一度衝突すると修復に多大なエネルギーを要するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側と、全員が笑って帰れることを目的とする側では、成功の定義が根本的に異なります。"}]$jth47tvea$::jsonb,
      $jvso499vc$[]$jvso499vc$::jsonb
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
      'GPVH', 'GFVH',
      $jxurrhwiu$[{"t":"p","text":"集団での活動、高い目標への追求、そして運動を通じた感情の共鳴において、最も高い熱量を生み出す組み合わせです。共に限界まで追い込むことを喜びとし、チームとしての成功を強く望むため、爆発的な成果を上げることが可能です。しかし、長期的な計画に基づき着実に進めたい側と、その瞬間の熱量や仲間の本気に突き動かされて動きたい側では、行動のトリガーが異なります。計画的な管理を重視する姿勢と、その場の高揚感を最優先する姿勢が交差するため、日常的な練習の継続性において微細なズレが生じやすいです。"}]$jxurrhwiu$::jsonb,
      $j8hs3gswd$[{"t":"p","text":"集団での活動という共通項を最大限に活かし、互いの熱量が連鎖するような高強度なグループワークアウトや競技会に参加することが推奨されます。"},{"t":"p","text":"事前の計画には「この日は本気でやる」というスイッチを明確に設定し、相手がその瞬間に全力を出し切れるような環境を整えることが効果的です。"},{"t":"p","text":"運動後の感情的なシェアを大切にし、互いの「本気」を認め合う時間を設けることが重要です。"}]$j8hs3gswd$::jsonb,
      $jg7i3o7d9$[{"t":"p","text":"計画通りに段階的な負荷をかけたい側と、その場のノリや熱量で突発的に強度を上げたい側との間で、トレーニングの規律を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチーム運営を計画する側にとって、熱量が下がった瞬間に参加意欲を失ってしまう相手の振る舞いは、信頼を損なう原因となります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時や失敗の際、責任の所在を巡って激しい衝突に発展するリスクがあります。"}]$jg7i3o7d9$::jsonb,
      $jjpr30mqk$[]$jjpr30mqk$::jsonb
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
      'GPVH', 'GPMC',
      $j5qdwg5x8$[{"t":"p","text":"集団での活動と長期的な計画性を重んじる点において、安定した協力関係を築ける組み合わせです。共にスケジュール管理や段取りを重視するため、練習の実施時間を合わせることや、事前の段取りにおいて摩擦が少なく、スムーズに進行できます。しかし、理想の自分を目指して限界に挑み続けたい側と、現在のコミュニティや自身の状態を維持し、穏やかに整えたい側では、運動の最終的なゴールが異なります。感情を燃やして高みを目指す姿勢と、常に一定の精神状態を保ちながら継続することを目的とする姿勢が交差するため、求める負荷のレベルにおいて温度差が生じやすいです。"}]$j5qdwg5x8$::jsonb,
      $j3f8ow57c$[{"t":"p","text":"計画性を共有している強みを活かし、数ヶ月先の大会やイベントに向けた長期的なトレーニングスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを前提とし、メインのトレーニングは各自のペースで行いつつ、集合時間やウォームアップ、クールダウンの時間を共有する形式をとることが効果的です。"},{"t":"p","text":"定期的な振り返りの場を設け、成果だけでなく「いかに安定して続けられたか」という継続の価値を認め合うことが重要です。"}]$j3f8ow57c$::jsonb,
      $jp7e89no8$[{"t":"p","text":"計画を重視するあまり、目標設定の高さや負荷の上げ方を巡って意見が対立し、妥協点を見出すのに時間を要することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、現状維持を優先し変化を嫌う相手の姿勢は、成長の停滞や意欲の欠如として映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々とルーティンをこなすことを良しとする側との間で、共感の欠如による不満が生じやすいです。"}]$jp7e89no8$::jsonb,
      $j84bsm9d9$[]$j84bsm9d9$::jsonb
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
      'GPVH', 'GPMH',
      $jdjbkbbtx$[{"t":"p","text":"集団での活動、緻密な計画性、そして高い成果への飽くなき追求において、最も合理的かつ強力なタッグを組める組み合わせです。共に限界まで追い込むことを当然とし、目標から逆算したトレーニングを完遂する規律を持っているため、競技において圧倒的な結果を出すことが可能です。しかし、理想の自分を目指して感情を燃やしながら突き進みたい側と、常に一定の精神状態を保ち、客観的なデータや戦略に基づいて成果を出したい側では、内面的な熱量が異なります。情熱を燃料とする姿勢と、冷静な計算を武器とする姿勢が交差するため、勝負どころでの振る舞いにおいて微細な温度差が生じやすいです。"}]$jdjbkbbtx$::jsonb,
      $jd7o8b35w$[{"t":"p","text":"計画性と高い負荷への要求が一致している強みを活かし、難易度の高い大会や記録更新に向けた本格的な共同トレーニングを行うことが推奨されます。"},{"t":"p","text":"事前の計画には具体的な数値目標と戦略を盛り込み、役割分担を明確にすることが効果的です。"},{"t":"p","text":"運動後の振り返りでは、客観的な成果だけでなく、その過程での互いの献身や努力を称え合う時間を設けることが重要です。"}]$jd7o8b35w$::jsonb,
      $jf0qa9ojw$[{"t":"p","text":"計画を重視するあまり、目標達成に向けた「最短ルート」を巡って意見が対立し、激しい議論に発展するリスクがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、常に冷静で感情を表に出さない相手の姿勢は、冷淡や無関心として映るリスクがあります。"},{"t":"p","text":"双方が高いプライドと達成欲求を持っているため、リーダーシップの所在を巡って主導権争いが生じやすいです。"}]$jf0qa9ojw$::jsonb,
      $j7amkajgq$[]$j7amkajgq$::jsonb
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
      'GPVH', 'GPVC',
      $ja4gcr9es$[{"t":"p","text":"集団での活動、計画的な進行、そして運動を通じた感情の共有において、非常に調和のとれた協力関係を築ける組み合わせです。共にスケジュールを守り、チームとしてのまとまりを重視するため、日常的な練習の運営が安定し、心理的な安心感を持って活動できます。しかし、理想の自分を目指して限界まで追い込みたい側と、現在のチームの状態や自身の心身を穏やかに整えたい側では、求める運動強度が異なります。限界突破を燃料とする姿勢と、調和と維持を目的とする姿勢が交差するため、目標設定の高さにおいて微細な温度差が生じやすいです。"}]$ja4gcr9es$::jsonb,
      $jkut9gjss$[{"t":"p","text":"計画性を共有している強みを活かし、全員が無理なく参加できる定期的なスケジュールを共に構築することが推奨されます。"},{"t":"p","text":"運動強度の違いを解消するために、メインの練習時間を「本気枠」と「調整枠」に分け、各自がその日の状態に合わせて選択できる形式をとることが効果的です。"},{"t":"p","text":"運動後のクールダウンや対話の時間を大切にし、成果だけでなくその過程での感情的なつながりを深めることが重要です。"}]$jkut9gjss$::jsonb,
      $jgjd7ztm0$[{"t":"p","text":"計画を重視するあまり、練習の負荷を上げるタイミングや目標の難易度を巡って意見が対立し、妥協点を見出すのに苦労することがあります。"},{"t":"p","text":"集団の成果を至上命題とする側にとって、和を優先して自分を追い込まない相手の姿勢は、向上心の欠如や甘えとして映るリスクがあります。"},{"t":"p","text":"双方が感情的に熱くなりやすいため、目標未達時やチーム内のトラブルの際、感情のぶつかり合いが長期化するリスクがあります。"}]$jgjd7ztm0$::jsonb,
      $jh2vxbeiu$[]$jh2vxbeiu$::jsonb
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