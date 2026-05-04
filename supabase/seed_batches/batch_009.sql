INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFMH', 'GFVC',
      $j3o1k1a53$[{"t":"p","text":"事前の計画に縛られない自由さは共有しているものの運動に対する根本的な要求が大きく異なる組み合わせです。自己の限界に挑む単独での高負荷な体験を求める側と集団の感情的な調和を重んじながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$j3o1k1a53$::jsonb,
      $jor70k57b$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や会話を楽しむ活動を共有することで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jor70k57b$::jsonb,
      $jelgr1qpe$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、周囲との調和や穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"感情の起伏を伴いながら運動を楽しむ側にとって、常に一定の精神状態を保ちながら唐突に激しい行動に出る側の振る舞いが理解しがたく、不信感につながります。"}]$jelgr1qpe$::jsonb,
      $jcx6ovusg$[]$jcx6ovusg$::jsonb
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
      'SFMH', 'GFVH',
      $j8m3g2rla$[{"t":"p","text":"計画を持たずに高い負荷の運動へ飛び込むという行動の核心部分が共鳴する組み合わせです。思い立った瞬間に全力で動き出せる起動力の高さは一致していますが、その熱量を周囲に感染させたい側と自己の体験として完結させたい側とで方向性が分かれます。また感情を爆発させて取り組む姿勢と常に精神的な安定を保つ姿勢の違いが運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$j8m3g2rla$::jsonb,
      $j5beq8o4u$[{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、運動の強度を意図的に抑えることなく互いの限界を引き出し合うような挑戦的な環境を設定することが望ましいです。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j5beq8o4u$::jsonb,
      $jivricrlq$[{"t":"p","text":"集団全体を巻き込んで熱狂を生み出そうとするアプローチが、単独での深い体験に没入したい側の集中力を削ぎ、運動に対する純粋なモチベーションを低下させます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"高い負荷を求める目的が集団の熱量向上か個人の限界突破かで対立し、同じ空間で激しく動いていても互いに見ているゴールが異なるため一体感を得にくいです。"}]$jivricrlq$::jsonb,
      $j5z94y6su$[]$j5z94y6su$::jsonb
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
      'SFMH', 'GPMC',
      $jon03cyiz$[{"t":"p","text":"精神的な安定を保ちながら運動に向き合うという一点のみを共有し、それ以外の全ての行動原理が対立する非常に難易度の高い組み合わせです。直感的に高い負荷を求め単独で新しい刺激を追求する側にとって、集団の調和を重んじ計画的かつ穏やかに習慣を積み重ねる側の世界観は強い拘束感と退屈さを伴います。逆に秩序と安定を重んじる側にとって、予測不可能なタイミングで突発的に激しい行動を起こす側の存在は、コミュニティの調和を脅かす不確定要素として強い心理的ストレスを与えます。"}]$jon03cyiz$::jsonb,
      $jvpa5x8w7$[{"t":"p","text":"互いに運動スタイルが根本的に異なる事実を尊重し、同じ空間にいても完全に別の行動をとるという不可干渉のルールを徹底することが重要です。"},{"t":"p","text":"固定化されたコミュニティの活動を重んじる側が、例外的に日常の枠組みを外す特別な機会を設けた場合に限り、直感的に動く側の予測不可能な提案を受け入れる余白が生まれます。"},{"t":"p","text":"運動の目的や強度が全く異なることを前提とし、運動そのものではなく互いの独立した時間を確保するための環境づくりにおいて協力し合う視点が有効です。"}]$jvpa5x8w7$::jsonb,
      $jigq1t00e$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な振る舞いが、緻密な計画と反復によって心理的な安定を保っている側の秩序を破壊し、強い感情的な動揺を引き起こす原因となります。"},{"t":"p","text":"限界に挑むような高強度の運動を突発的に求める側のアプローチは、身体的な調和と穏やかなペースを計画的に維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"}]$jigq1t00e$::jsonb,
      $jj67n33g7$[]$jj67n33g7$::jsonb
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
      'SFMH', 'GPMH',
      $jbw36fjka$[{"t":"p","text":"精神的な安定を保ちながら高い負荷を求めるという運動の核心部分が一致しており、全力を出し切る心地よさを共有できる関係性です。しかしその力を発揮する前提条件が大きく異なり、一方はその日の衝動に従って単独で動くことを好むのに対し、もう一方はチームの目標達成のために綿密な計画を立てて動くことを重視します。お互いの能力の高さは認め合えるものの、運動の目的をどこに置くかのすり合わせが必要になります。"}]$jbw36fjka$::jsonb,
      $j1euohlzk$[{"t":"p","text":"限界まで体を追い込むことへの抵抗感がないため、単発の高強度な運動であれば言葉を交わさずとも息を合わせることができ、目標や計画を脇に置いた即興のセッションが有効です。"},{"t":"p","text":"精神的な波が少なく互いの違いを客観的に受け入れられる性質を持っているため、一方は計画通りに動きもう一方はその日の気分で動くという別々のやり方を許容し合うことが望ましいです。"},{"t":"p","text":"集団での目標達成を目指す側があえて計画を持たない自由な日を設けることで、衝動的に動く側のペースに合わせる余白が生まれ、純粋な身体的限界への挑戦というテーマで噛み合います。"}]$j1euohlzk$::jsonb,
      $jcb0yzpvw$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"突発的に高いパフォーマンスを発揮して満足する側と、それを次の計画のデータとして蓄積したい側とで、運動後の振り返りに対する温度差が生じ、義務感によるストレスが発生します。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jcb0yzpvw$::jsonb,
      $jxifsmjlm$[]$jxifsmjlm$::jsonb
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
      'SFMH', 'GPVC',
      $jbpvpnpir$[{"t":"p","text":"全ての行動原理と価値観が対極に位置する、最も理解し合うことが困難な組み合わせです。単独で直感的に限界へ挑み精神的な安定を保つ側と、集団の調和を重んじ計画的に穏やかなペースを守りながら感情の起伏を伴う側とでは、運動に求めるものが何一つ交わりません。互いの存在がそれぞれの運動スタイルに対する根本的な脅威となり得るため、無理に行動を共にすることは深刻なストレスと疲労を招く結果となります。"}]$jbpvpnpir$::jsonb,
      $jy9hzi3sq$[{"t":"p","text":"互いの運動に対する哲学が完全に相反する事実を明確に認識し、運動の場を一切共有しないという選択が最も互いを尊重する結果となります。"},{"t":"p","text":"どうしても行動を共にする必要がある場合は、運動そのものを目的とせず、移動や観光といった別の枠組みの中で身体を動かす要素を取り入れるアプローチが求められます。"},{"t":"p","text":"互いのやり方に干渉せずそれぞれの独立した活動を遠くから見守る姿勢を保つことで、不要な摩擦を回避し精神的な平穏を維持できます。"}]$jy9hzi3sq$::jsonb,
      $j7oamsazl$[{"t":"p","text":"集団全体の感情的な動きや一体感に配慮する側に対して、自己の体験のみに没入する側の態度が周囲への無関心や冷たさとして受け取られ、心理的な孤立感を生みます。"},{"t":"p","text":"直感に従って予測不可能なタイミングで行動を起こす側のスタイルが、緻密にスケジュールを管理して段階的な成長を狙う側の計画を根底から狂わせる場面が頻発します。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j7oamsazl$::jsonb,
      $j14chbt89$[]$j14chbt89$::jsonb
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
      'SFMH', 'GPVH',
      $j61go3d52$[{"t":"p","text":"限界まで体を追い込むという高い強度への要求のみを共有し、それ以外の全てのアプローチが対立する組み合わせです。単独で直感的に行動し精神的な安定を保つ側と、集団を率いて計画的に目標を達成し感情を爆発させる側とでは、全力を出すための前提条件が全く異なります。互いの能力の高さは認め合えるものの、運動の目的やプロセスにおけるすり合わせが極めて困難であり、同じ空間で活動する際には常に緊張感が伴います。"}]$j61go3d52$::jsonb,
      $jd8sxg3oq$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"計画的に限界を追求する側があえて事前のプログラムを放棄し、その場の直感のみで全力を出し切る非日常的なセッションを設けることで、直感的に動く側の爆発的なエネルギーと同調することができます。"},{"t":"p","text":"互いに単独での行動を基本としているため、同じ目標に向かって協力するのではなく、同じ空間でそれぞれが独立して限界に挑む並行した全力のスタイルをとることが望ましいです。"}]$jd8sxg3oq$::jsonb,
      $jxl54k3cp$[{"t":"p","text":"チームの計画や目標を共有しようとするアプローチは、その日の気分で自由に動きたい側にとって強い束縛となり、運動へのモチベーションを急激に低下させる原因となります。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"集団のルールを重んじる側と個人の自由を重んじる側という根本的な行動原理の違いが、長期的な関係構築において常に壁となり、自然と距離ができる要因となります。"}]$jxl54k3cp$::jsonb,
      $j98znxhtl$[]$j98znxhtl$::jsonb
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
      'SFMH', 'SFMC',
      $j2px4oh7b$[{"t":"p","text":"単独で直感的に行動し精神的な安定を保ちながら運動に向き合うという基盤を完全に共有する組み合わせです。思い立った瞬間に一人で動き出す身軽さや事前の計画に縛られない自由なスタイルが一致しているため、行動のペースやリズムにおいて深い共鳴を示します。唯一の違いは運動の強度に対する要求にあり、限界まで体を追い込みたい側と心地よい負荷で心身を整えたい側とで運動の最終的な目的が分かれます。"}]$j2px4oh7b$::jsonb,
      $jqcqerunr$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、同じ空間にいながらもそれぞれの独立した運動スタイルを尊重し合うことが良好な関係を保つ鍵となります。"},{"t":"p","text":"高い負荷を求める側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境を楽しむ活動を共有することで無理のない時間を過ごすことができます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた自由な時間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jqcqerunr$::jsonb,
      $j8sz8us2s$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、適度な負荷で心地よさを保ちたい側の許容量を超え、体力的な疲労や心理的な負担を与えてしまいます。"},{"t":"p","text":"限界に挑むような激しい運動を求める側のアプローチが、身体的な調和と穏やかなペースを維持したい側にとって、肉体的にも精神的にも許容範囲を大きく超える要求となります。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、さらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$j8sz8us2s$::jsonb,
      $jpkus9zx6$[]$jpkus9zx6$::jsonb
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
      'SFMH', 'SFVC',
      $jzud393x8$[{"t":"p","text":"単独で直感的に行動するという点では一致しているものの、運動に対する根本的な要求と精神的なアプローチが大きく異なる組み合わせです。事前の計画に縛られない自由さは共有していますが、自己の限界に挑む単独での高負荷な体験を求める側と、感情の起伏を伴いながら穏やかに体を動かしたい側とでは行動のペースと目的が交わりません。一方が妥協して相手に合わせると過度な疲労や深刻な物足りなさを抱えることになるため適度な距離感が求められます。"}]$jzud393x8$::jsonb,
      $jp850g39m$[{"t":"p","text":"厳密なスケジュールや目標を設定せず、当日の気分や状況に応じて柔軟に行き先や内容を変更できる余白を残すことで互いの自由を尊重できます。"},{"t":"p","text":"自己の限界に挑む側が意図的に休息や回復を目的とする日に限定し、穏やかなペースで環境や感情の共有を楽しむ活動を共にすることで無理のない時間を過ごせます。"},{"t":"p","text":"運動そのものの成果よりも活動を通じた対話や空間の共有に価値を置く状況を設定することで、負荷の違いによる不満を回避しやすくなります。"}]$jp850g39m$::jsonb,
      $j78hs2jco$[{"t":"p","text":"より高い負荷や新しい刺激を求める突発的な行動が、感情の起伏を伴いながら穏やかなペースを保ちたい側の身体的および心理的な許容量を超え、強い疲労感を与えます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$j78hs2jco$::jsonb,
      $jppc417bc$[]$jppc417bc$::jsonb
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
      'SFMH', 'SFVH',
      $jtqvc6t7q$[{"t":"p","text":"単独で高い負荷に挑み事前の計画に縛られず直感的に行動するという運動の核心部分を完全に共有する、非常に親和性の高い組み合わせです。互いに妥協なく全力を出し切る姿勢を当然のものとして理解し合えるため、行動を共にする際の熱量は完全に一致します。唯一の違いはその高負荷を生み出す源泉が精神的な安定によるものか感情の爆発によるものかという内面的な差異にあり、運動中のコミュニケーションにおいて温度差を生み出す要因となります。"}]$jtqvc6t7q$::jsonb,
      $j1jpfbaff$[{"t":"p","text":"互いに高い負荷を求める性質が一致しているため、遠慮や手加減を一切排除し、純粋に身体能力の限界に挑むような激しいセッションを共有することが最も効果的です。"},{"t":"p","text":"直感的に全力を出したいタイミングが合致した際に、事前の準備を省いて即座に高強度のトレーニングを開始することで互いの高いエネルギーを完全に燃焼させることができます。"},{"t":"p","text":"感情を爆発させる側の熱量を精神的に安定している側が冷静な推進力として受け止めることで、互いの特性を活かした持続的な高パフォーマンスを実現できます。"}]$j1jpfbaff$::jsonb,
      $jzd1nh44i$[{"t":"p","text":"感情の起伏により自身のパフォーマンスに対して強い自己嫌悪に陥っている側に対し、精神的に安定している側がその不調を深刻に受け止めず軽く流してしまうことで心理的なすれ違いが生じます。"},{"t":"p","text":"感情の起伏をエネルギーに変える側の激しい波に対して、常に一定の精神状態を保つ側が淡々と対応することで、感情の共有を求める側に強い孤独感を与えてしまいます。"},{"t":"p","text":"その日の感覚で十分な満足を得て行動を終了しようとする側に対し、感情の高ぶりからさらに強度を引き上げようとする側が継続を促すことで、終了のタイミングに関する摩擦が生じます。"}]$jzd1nh44i$::jsonb,
      $j6pyan6g4$[]$j6pyan6g4$::jsonb
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
      'SFMH', 'SPMC',
      $jm3qymjor$[{"t":"p","text":"単独行動を好み精神的な安定を保ちながら運動に向き合うという基盤は共有しているものの、運動に対する哲学が根本的に異なる組み合わせです。直感と新鮮な刺激を求めて高負荷な挑戦を好む側と、計画的かつ穏やかに習慣を積み重ねることに価値を見出す側とでは、行動の動機が交わることが少ないです。一緒に運動を組み立てることは困難ですが、自立心と精神的な成熟度が高いため、相手のやり方を否定することなく適度な距離感を保ちながら共存できる関係性です。"}]$jm3qymjor$::jsonb,
      $j1izo4irm$[{"t":"p","text":"互いに単独での行動を基本としているため、無理にペースや目的を合わせようとせず、それぞれの独立した運動スタイルを尊重し合い行動の境界線を明確に引くことで良好な関係が保たれます。"},{"t":"p","text":"計画的に動く側があえて日常のルーティンから外れる特別な日を設けた際にのみ、直感的に動く側の突発的な提案に乗るという限定的な関わり方が機能します。"},{"t":"p","text":"精神的な安定という共通項を活かし、運動のアプローチが全く異なる事実を互いに興味深い個性として受け入れる姿勢を持つことが、このペアの居心地の良さを支える基盤となります。"}]$j1izo4irm$::jsonb,
      $ju44dcbuo$[{"t":"p","text":"計画的な継続や反復を重んじる側がその習慣的なアプローチを相手に提案した際、常に新しい刺激を求める側は強い退屈感や拘束感を覚え、モチベーションを急激に喪失してしまいます。"},{"t":"p","text":"直感に従って突発的に行動を起こす側の予測不可能な動きが、緻密な計画を立てて実行する側のペースを乱し、計画遂行の妨げとなる場面が頻発しストレスが生じやすくなります。"},{"t":"p","text":"限界に挑むような高い負荷を求める側の要求に対し、身体的な調和と穏やかなペースを保ちたい側は追従することができず、強度の不一致が行動を共にする際の決定的な分断要因として作用します。"}]$ju44dcbuo$::jsonb,
      $jhb0sf4cs$[]$jhb0sf4cs$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;