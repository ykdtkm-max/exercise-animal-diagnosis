INSERT INTO public.exercise_animal_compat_pairs (
      from_animal_code, to_animal_code,
      compat_explanation_blocks, enjoy_tips_blocks, friction_blocks, extra_sections
    ) VALUES (
      'SFVC', 'GPVC',
      $jr4gl1o64$[{"t":"p","text":"感情の繊細さを持ちながら穏やかな強度で動くという点では深い理解が得られます。しかし一人でその日の気分に従って動きたい側に対し、相手は複数人での計画的な活動を通じて集団への責任を果たそうとします。感情の揺れを共有できる温かさはあるものの、相手の持つ計画性や集団への帰属意識が、自由と静けさを求める側のトレーニングにおいて重い足かせとなります。"}]$jr4gl1o64$::jsonb,
      $ju9ja71a5$[{"t":"p","text":"感情の繊細さと穏やかな活動を好むという共通点を最大限に活かし、互いの心の状態に寄り添いながら無理のないペースで静かな時間を共有することが推奨されます。"},{"t":"p","text":"相手が重視する計画性や集団での活動に対し、自身の参加を不定期かつ義務のないものとして事前に合意しておくことで、心理的な負担を感じずに相手の温かな空間に参加できます。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が計画通りに進まないことで動揺している際にはその感情を否定せずに受け止める姿勢を持つことが関係性の安定に寄与します。"}]$ju9ja71a5$::jsonb,
      $jfu1oxn9a$[{"t":"p","text":"集団への責任感から計画的な参加を求める相手の期待に対し、気分で動きたい側はそれに応えられない自分に罪悪感を抱き、結果としてトレーニングから距離を置きたくなります。"},{"t":"p","text":"気分による突然の不参加が発生した際、計画を重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"一人で静かに過ごすことで心を整えたい側にとって、複数人での活動を前提とする相手の環境はたとえ強度が穏やかであっても常に他者の感情に晒されるという点で精神的な消耗を伴います。"}]$jfu1oxn9a$::jsonb,
      $jvt4sj0a4$[]$jvt4sj0a4$::jsonb
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
      'SFVC', 'GPVH',
      $jfoeqt83y$[{"t":"p","text":"感情の起伏が大きく内面状態と行動が連動するという点では理解し合えます。しかし一人で気分に合わせて穏やかに整えたい側に対し、相手は複数人で計画的に高強度の活動を行い感情を熱く燃やそうとします。同じ感情の揺れを持ちながらも、そのエネルギーを静寂に向けるか熱狂に向けるかという出力方向が完全に逆であり、相手の熱量は静けさを求める側にとって大きな脅威となります。"}]$jfoeqt83y$::jsonb,
      $jqd192n6o$[{"t":"p","text":"感情が行動の起点になるという唯一の共通点を活かし、互いの心の状態について深く語り合う時間を設けることで、行動様式の違いを超えた精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手が持つ高い熱量や計画的な集団行動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手の熱狂的な活動を遠くから見守りつつ自身は一人の静かなペースを保つという明確な境界線を引くことが重要となります。"}]$jqd192n6o$::jsonb,
      $j17sk6pkb$[{"t":"p","text":"集団で計画的に高強度の活動を推進しようとする相手の熱量は、一人で穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い圧迫感として作用します。"},{"t":"p","text":"感情の揺れを共有しているため、相手が目標に向かって熱く感情を昂らせている時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と集団への責任を重んじる相手が参加を強要した際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$j17sk6pkb$::jsonb,
      $j0hjx72eq$[]$j0hjx72eq$::jsonb
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
      'SFVC', 'SFMC',
      $j0jqv2ipp$[{"t":"p","text":"事前の計画なしに一人で穏やかに動くという外形的な行動様式は完全に一致しています。唯一の違いは感情の揺れと連動して動くか、常に一定の心理的安定を保ちながら気まぐれに動くかという点にあります。トレーニングのペースや好む環境が非常に似ているため一緒に過ごす上での摩擦は極めて少ないですが、内面的な感情の重みにおいて微細な温度差が存在します。"}]$j0jqv2ipp$::jsonb,
      $jx3r0ssw6$[{"t":"p","text":"計画を立てず一人ひとりのペースを尊重しながら穏やかに動くという共通の基盤を活かし、互いに干渉しすぎない自然体での活動を共有することが推奨されます。"},{"t":"p","text":"感情の揺れが大きい日は心理的に安定している相手の淡々としたペースに身を委ねることで、自身の感情の波を穏やかに静める効果的なトレーニング時間として活用することができます。"},{"t":"p","text":"相手の心理的な安定感を冷たさと捉えるのではなく感情に振り回されない頼もしい特性として肯定的に受け止めることで、より安心感のある運動習慣を築くことが可能となります。"}]$jx3r0ssw6$::jsonb,
      $jodegdkzt$[{"t":"p","text":"感情の揺れや不調を訴えた際、心理的に安定している相手がそれを深刻に受け止めず淡々と処理してしまうことで、繊細な側はトレーニングを通じた共感が得られないという孤独感を感じます。"},{"t":"p","text":"気分によって予定を変更した際、相手は気に留めないものの、繊細な側は勝手に罪悪感を抱き込みその感情の処理において一人で疲弊してしまうという非対称な構造が存在します。"},{"t":"p","text":"行動様式が似ているからこそ内面的な感情の重みの違いが浮き彫りになりやすく、相手の軽やかさが時に自身の繊細な感情を否定されているように錯覚させる危険性を孕んでいます。"}]$jodegdkzt$::jsonb,
      $jbzs2ykmz$[]$jbzs2ykmz$::jsonb
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
      'SFVC', 'SFMH',
      $jvbhi3x06$[{"t":"p","text":"計画に縛られず単独で思い立った時に行動するという初動のスタイルは一致します。しかし穏やかに感情を整えたい側と、高強度の活動を通じて心理的な安定や刺激を得たい側とでは、動き出した後のトレーニング展開が大きく異なります。同じように気まぐれにスタートしても相手の求めるスピードや強度にはついていくことができず、結果として別々のペースで動くことになります。"}]$jvbhi3x06$::jsonb,
      $jj5ahk5da$[{"t":"p","text":"思い立った時にすぐ行動できるという共通の特性を活かし、活動のスタート地点や目的地だけを共有し、道中はそれぞれのペースで動くといった柔軟なトレーニング形式が推奨されます。"},{"t":"p","text":"相手が高強度の活動を求めることを前提とし、無理にペースを合わせようとせず自身は穏やかな活動に専念するという明確な役割分担を意識することが重要です。"},{"t":"p","text":"相手が意図的に強度を落とし休息や探索を目的とするような日にのみ行動を共にすることで、互いのペースの違いによる摩擦を避けつつ有意義な時間を共有することが可能となります。"}]$jj5ahk5da$::jsonb,
      $jvfvde8tp$[{"t":"p","text":"気まぐれに行動を開始した後、相手が急激に強度やスピードを上げた際、穏やかに心を整えたい側は取り残される感覚に陥り、強い疲労感と不満を抱くことになります。"},{"t":"p","text":"感情の揺れによって活動を控えたい日であっても、心理的に安定し刺激を求める相手の突発的な行動に巻き込まれると、自身の内面と向き合うトレーニング時間が奪われ精神的に消耗します。"},{"t":"p","text":"互いに単独での行動を好むため、ペースや目的の違いが明確になった瞬間に歩み寄る努力が放棄されやすく、一緒に運動する意味を見失いやすいという構造的な脆さを抱えています。"}]$jvfvde8tp$::jsonb,
      $jqiuyj2ep$[]$jqiuyj2ep$::jsonb
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
      'SFVC', 'SFVH',
      $jlrf0qkuj$[{"t":"p","text":"計画なしに一人で感情の揺れと連動しながら動くという内面的なメカニズムは非常に似通っています。唯一にして最大の違いはその感情を穏やかに整える方向に向かうか、高強度の活動で爆発させる方向に向かうかという点にあります。感情の起伏を共有できるため深い共感関係を築ける一方で、相手の激しいエネルギー放出は静けさを求める側にとって許容範囲を超える刺激となりえます。"}]$jlrf0qkuj$::jsonb,
      $j2joxgxjx$[{"t":"p","text":"感情の揺れに従って単独で動くという共通の特性を活かし、お互いの気分が合致したタイミングで互いに干渉しない距離感を保ちながら活動を共有することが推奨されます。"},{"t":"p","text":"相手が感情を高強度で爆発させたい日には無理に同行せず、互いの感情が落ち着き静けさを求めているタイミングを見計らって穏やかなトレーニング時間を共にすることが有効です。"},{"t":"p","text":"感情の起伏が激しいという共通点を理解し合い、不調な日には互いに距離を置き無理に励ましたり活動を強要したりしないという暗黙のルールを設けることが関係を安定させます。"}]$j2joxgxjx$::jsonb,
      $jhebahnhv$[{"t":"p","text":"感情が高ぶった相手が高強度の活動に突入した際、穏やかに心を整えたい側はその激しいエネルギーに圧倒され自身のペースを乱されることに対する強い拒絶感を抱きます。"},{"t":"p","text":"互いに感情の揺れが大きいため双方が同時にネガティブな感情に支配された場合、負の感情が共鳴し合いトレーニングの継続そのものが極めて不安定な状態に陥る危険性を孕んでいます。"},{"t":"p","text":"感情に従って行動するがゆえに相手の激しい感情表現を自身への攻撃や圧力と誤認しやすく、繊細な者同士の衝突は修復に時間がかかる深い心理的ダメージを生む可能性があります。"}]$jhebahnhv$::jsonb,
      $j3702lmwi$[]$j3702lmwi$::jsonb
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
      'SFVC', 'SPMC',
      $jbk0xystf$[{"t":"p","text":"単独で穏やかな活動を好むという外形的なスタイルは一致しています。しかしその日の気分と感情の揺れに従って動く側に対し、相手は計画表かつ継続的な習慣を通じて心理的安定を維持しようとします。静かで穏やかなトレーニング環境を共有できる安心感はあるものの、相手の持つ規則正しさや継続への意志が、気まぐれで繊細な側にとって無言のプレッシャーとして機能します。"}]$jbk0xystf$::jsonb,
      $j2pt4fsmg$[{"t":"p","text":"一人で穏やかに動くという共通の好みを活かし、相手の計画的な活動に対して自身は気が向いた時だけ参加するという不定期な関わり方を許容してもらうことが推奨されます。"},{"t":"p","text":"相手の規則正しい習慣を尊重しつつ自身の感情の揺れや気まぐれさを事前に伝え、計画通りに行動できない日があっても互いに気にしないという合意を形成しておくことが有効です。"},{"t":"p","text":"心理的に安定している相手の淡々としたペースを自身の感情の揺れを静めるための安全な拠り所として活用することで、互いの違いを補完し合う関係性を築くことが可能となります。"}]$j2pt4fsmg$::jsonb,
      $j76a7tvyw$[{"t":"p","text":"計画的な習慣を重んじる相手がよかれと思って定期的な活動への参加を促した際、気分で動きたい側はそれを強い拘束や義務感として受け取り心理的な負担を増大させます。"},{"t":"p","text":"感情の揺れによって予定をキャンセルした際、心理的に安定している相手は気に留めないものの、繊細な側は計画を乱したことへの罪悪感を抱き込み一人で疲弊してしまいます。"},{"t":"p","text":"規則正しく淡々と行動する相手の姿が感情に振り回されやすい側にとって、時に自身の不安定さを際立たせる鏡のように機能し、劣等感や自己否定を引き起こす原因となります。"}]$j76a7tvyw$::jsonb,
      $j50ham6wb$[]$j50ham6wb$::jsonb
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
      'SFVC', 'SPMH',
      $j5byeffe8$[{"t":"p","text":"他者に干渉されず単独で行動することを好むという点だけは一致します。しかし気分に合わせて穏やかに感情を整えたい側と、計画的に高強度の目標達成を目指し心理的安定を得る側とでは、運動の目的やアプローチが対極にあります。互いに単独行動を好むため直接的な衝突は避けやすいものの、相手のストイックな姿勢は静けさを求める側にとって近寄りがたい異質なものとして映ります。"}]$j5byeffe8$::jsonb,
      $j3nfo5b5j$[{"t":"p","text":"単独で行動するという唯一の共通点を尊重し、無理に活動を共有しようとせず同じ空間にいながらも完全に別の活動を行うといった独立した関係性を保つことが推奨されます。"},{"t":"p","text":"相手が目標や計画から離れ意図的に強度を落として休息をとるような例外的な日にのみ、穏やかな散策などを共有することで互いの領域を侵さずに時間を過ごすことができます。"},{"t":"p","text":"互いの運動に対する価値観が根本的に異なることを前提とし、相手のストイックな姿勢を自身のペースを脅かすものではなく単なる異なる生き方として客観的に観察する視点を持つことが有効です。"}]$j3nfo5b5j$::jsonb,
      $jzwse23o0$[{"t":"p","text":"計画的かつ高強度の目標達成を追求する相手の姿勢が、穏やかに心を整えたい側にとって常に評価や競争の基準を突きつけられているような無言のプレッシャーとして作用します。"},{"t":"p","text":"感情の揺れによって活動を休止したい日であっても、心理的に安定し計画を遂行する相手の存在が自身の感情的な不安定さを否定されているような錯覚を引き起こし心理的負担となります。"},{"t":"p","text":"互いに他者への干渉を好まないため、一度ペースや目的の違いによる違和感が生じるとそれをすり合わせる努力が行われず、心理的な距離が決定的に離れてしまう傾向があります。"}]$jzwse23o0$::jsonb,
      $j3e433g3p$[]$j3e433g3p$::jsonb
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
      'SFVC', 'SPVC',
      $jqx75ko72$[{"t":"p","text":"単独で感情の繊細さと連動しながら穏やかに動くという基本的な性質は非常に似通っています。唯一の違いはその日の気分で動くか、計画的なルーティンを守るかという点にあります。感情の揺れを共有しながら静かな時間を過ごせるため深い安心感が得られる一方で、相手のルーティンへの固執が気まぐれに動きたい側の自由を制限し、トレーニングにおける予期せぬ摩擦を生む可能性があります。"}]$jqx75ko72$::jsonb,
      $jxbzhb77j$[{"t":"p","text":"一人で穏やかに感情と向き合うという共通の基盤を最大限に活かし、互いの心の状態に寄り添いながら静かで刺激の少ない環境での活動を共有することが推奨されます。"},{"t":"p","text":"相手の計画的なルーティンを尊重しつつ自身の参加は不定期であることを事前に合意し、相手の規則正しい生活の中に時折交わるような柔軟な関わり方を構築することが有効です。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手がルーティンを崩されて動揺している際にはその感情を否定せずに受け止め、静かに寄り添う姿勢を持つことがトレーニング関係の安定に寄与します。"}]$jxbzhb77j$::jsonb,
      $j1gb9javf$[{"t":"p","text":"計画的なルーティンを重んじる相手がその規則正しい活動への同調を求めた際、気分で動きたい側は自由を奪われるような強い拘束感を感じ、心理的な逃避を引き起こします。"},{"t":"p","text":"気分によって予定をキャンセルした際、ルーティンを重視する相手は強い感情的な動揺を示しやすく、その動揺が繊細な側にも伝播することで互いに負の感情を増幅させてしまいます。"},{"t":"p","text":"感情の揺れを共有しているがゆえに、相手の計画通りに進まないことへの苛立ちや不安がダイレクトに伝わりやすく、穏やかに心を整えたい側にとって過度な精神的消耗をもたらします。"}]$j1gb9javf$::jsonb,
      $jhy53ei73$[]$jhy53ei73$::jsonb
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
      'SFVC', 'SPVH',
      $jqt23t8p8$[{"t":"p","text":"単独で行動し感情の起伏と深く連動するという内面的なメカニズムは共有しています。しかしその感情を穏やかに整えるために気分で動く側に対し、相手は計画的かつ高強度のトレーニングを通じて自己を超越しようとします。感情の揺れという共通項を持ちながらも、相手のストイックな自己研鑽の姿勢は、静けさと安心を求める側にとって常に自身を否定されているような強い圧迫感を与えます。"}]$jqt23t8p8$::jsonb,
      $jfnzqxvc1$[{"t":"p","text":"単独で行動し感情と連動するという共通の特性を活かし、互いの内面的な葛藤や感情の揺れについて語り合うことで、行動様式の違いを超えた深い精神的な繋がりを築くことが推奨されます。"},{"t":"p","text":"相手の計画的で高強度の活動には無理に同調せず、相手が意図的に休息をとるような静かな日にのみ穏やかな活動を共有するという限定的な関わり方が有効です。"},{"t":"p","text":"互いの求める運動の質が根本的に異なることを理解し、相手のストイックな姿勢を遠くから見守りつつ自身は一人の穏やかなペースを保つという明確な境界線を引くことが重要となります。"}]$jfnzqxvc1$::jsonb,
      $jb7lwhmmt$[{"t":"p","text":"計画的に高強度の目標達成を追求し自己を超越しようとする相手の熱量は、穏やかに心を整えたい側にとって自身のペースを完全に破壊されるような強い恐怖感として作用します。"},{"t":"p","text":"互いに感情の揺れが大きいため、相手が目標に向かってストイックに自身を追い込んでいる時、静けさを求める側はその過剰なエネルギーに当てられ深刻な精神的疲労を引き起こします。"},{"t":"p","text":"気分によって行動を変えたい側に対し、計画と自己研鑽を重んじる相手がその姿勢を求めた際、繊細な側は逃げ場を失い運動そのものに対する強い拒絶反応を示す可能性があります。"}]$jb7lwhmmt$::jsonb,
      $jk6pi6quq$[]$jk6pi6quq$::jsonb
    )
    ON CONFLICT (from_animal_code, to_animal_code) DO UPDATE SET
      compat_explanation_blocks = EXCLUDED.compat_explanation_blocks,
      enjoy_tips_blocks = EXCLUDED.enjoy_tips_blocks,
      friction_blocks = EXCLUDED.friction_blocks,
      extra_sections = EXCLUDED.extra_sections;