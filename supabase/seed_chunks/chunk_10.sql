      $jq6b351v3$[{"t":"p","text":"相手がチーム全体の強度を上げようと提案した際、基準型は「ついていけない人が出るのではないか」という不安から強く反対し、議論が平行線になります。"},{"t":"p","text":"運動後の振り返りで、基準型が自分の至らなさを繊細に反省している横で、相手が淡々と次の高い目標を語り始めると、基準型は突き放されたような感覚に陥ります。"},{"t":"p","text":"相手が結果を重視して計画を合理的に変更しようとすると、決まった手順を守ることで安心を得ている基準型は、場が不安定になったと感じて混乱します。"}]$jq6b351v3$::jsonb,
      $jlhos3flp$[]$jlhos3flp$::jsonb
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
      'GPVC', 'GPVH',
      $jnfw8ndo5$[{"t":"p","text":"仲間への強い責任感と計画性を共有する、非常に誠実なペアです。どちらも「一度決めた約束は必ず守る」という価値観をなりたい由来の繊細な感受性で支えており、運動の場を維持することへの熱量は同等です。違いは負荷への向き合い方のみで、基準型が穏やかな継続を願うのに対し、相手は高みを目指す挑戦を仲間に求めます。互いの「場を大切にしたい」という根底の想いを信頼し合えれば、最強の運営パートナーとなります。"}]$jnfw8ndo5$::jsonb,
      $jgeaa3g34$[{"t":"p","text":"どちらも約束を破られると深く傷つく特性を持つため、欠席連絡のルールや遅刻への対応など、誠実さを確認し合える細かな約束事をあらかじめ決めておきます。"},{"t":"p","text":"相手が掲げる高い目標に対し、基準型が「全員が脱落しないためのセーフティネット」としてトレーニング強度を微調整する役割を担い、チームの崩壊を防ぎます。"},{"t":"p","text":"運動後のミーティングでは、技術的な反省だけでなく「今日のみんなの表情はどうだったか」という感情面の共有を重視し、なりたい同士の深い共感を確認し合います。"}]$jgeaa3g34$::jsonb,
      $jz3jds89a$[{"t":"p","text":"相手がチーム全体の士気を高めるために厳しい練習を課そうとした際、基準型は「これでは誰かが傷ついてしまう」と過剰に心配し、相手の熱意に水を差してしまいます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の指導や指摘が少しでも語気が強まると、相手を攻撃していると誤解し、深刻な感情的しこりを残します。"},{"t":"p","text":"基準型が全員の参加を最優先するあまり、本気で上を目指したい相手の向上心を「和を乱すもの」として無意識に抑え込んでしまい、相手の不満を募らせます。"}]$jz3jds89a$::jsonb,
      $jxdgtakqm$[]$jxdgtakqm$::jsonb
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
      'GPVC', 'SFMC',
      $j68t3upv3$[{"t":"p","text":"低強度の運動を好む点は一致していますが、運動の場に対する向き合い方が正反対です。基準型は固定メンバーとの約束を誠実に守り、計画された定例活動を継続の柱としますが、相手は一人でその日の気分に従って自由に歩くことを好みます。基準型が相手をコミュニティの枠に当てはめようとすると、相手は束縛を感じて離れ、基準型は相手の気まぐれな参加スタイルに不誠実さを感じて傷つくといった、構造的なすれ違いが生じやすいです。"}]$j68t3upv3$::jsonb,
      $jpkubb8qe$[{"t":"p","text":"基準型が主催する定例ウォーキングなどを「予約不要・出入り自由」のオープンな形式にし、相手が気が向いた時だけふらりと立ち寄れるような、緩やかな接点を維持します。"},{"t":"p","text":"相手が一人で見つけてきた魅力的な散歩コースや景色の情報を、基準型がコミュニティの活動プランに取り入れるといった、情報の循環による間接的な協力を楽しみます。"},{"t":"p","text":"どちらも身体的な負荷を上げすぎないことを良しとするため、一緒に動く際は「今日はここまで」と早めに切り上げる合意を最初に取り、互いの体力を尊重し合います。"}]$jpkubb8qe$::jsonb,
      $j6rnui136$[{"t":"p","text":"基準型が「来週も待っています」と誠実に伝えた言葉が、ありたいな相手にとっては「来なければならない」という重圧に感じられ、次回の参加を躊躇させる原因になります。"},{"t":"p","text":"相手が当日の直感で別の場所へ行くと決めた際、計画を信頼の証とする基準型は、自分の準備や想いが無下にされたと感じて深い心理的なダメージを負います。"},{"t":"p","text":"基準型がコミュニティの団結力を高めようとイベントを企画しても、一人で動くことを好む相手が冷淡な反応を示すと、基準型は自分の努力を否定されたように感じます。"}]$j6rnui136$::jsonb,
      $jp7mojueo$[]$jp7mojueo$::jsonb
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
      'GPVC', 'SFMH',
      $j7g3v1kcl$[{"t":"p","text":"全4軸が異なる対極のタイプであり、運動の価値観が根本から衝突しやすいです。基準型は固定の仲間と計画的に低強度の運動を続けることで安心感を得ますが、相手は一人で直感に従い、高強度の冒険に挑むことで充実感を得ます。相手の予測不能な行動と激しい負荷志向は、場を整えたい基準型にとって最大の不安要素となり、同じ活動の枠組みに留まろうとすると、双方が多大なストレスを抱えることになります。"}]$j7g3v1kcl$::jsonb,
      $jbcrf9lm5$[{"t":"p","text":"互いの運動スタイルが全く別物であることを認め、一緒に動くことよりも、活動後にそれぞれの体験を報告し合う「非同期的な交流」に留めます。"},{"t":"p","text":"相手が一人で挑む過酷な挑戦に対し、基準型が安否確認や緊急連絡先を引き受けるといった、運動そのものには関わらない後方支援の形で協力します。"},{"t":"p","text":"相手が好む刺激的な場所や種目の話を、基準型が自分のコミュニティの「特別な日のイベント案」として安全にアレンジして取り入れるためのヒントにします。"}]$jbcrf9lm5$::jsonb,
      $jryd2k15y$[{"t":"p","text":"相手がその場の思いつきで「もっとハードなコースに行こう」と提案した際、安全と計画を最優先する基準型は、自分たちの居場所を破壊されるような恐怖を感じます。"},{"t":"p","text":"基準型が仲間のために用意した丁寧な段取りを、相手が「自由がない」と一蹴したり無視したりすると、基準型は自分の存在意義を否定されたと感じて深く傷つきます。"},{"t":"p","text":"相手のありたい由来の淡白な反応が、繊細な基準型には「自分や仲間への無関心」と映り、運動を通じた絆を信じる基準型のモチベーションを根底から崩します。"}]$jryd2k15y$::jsonb,
      $jlyw3odbj$[]$jlyw3odbj$::jsonb
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
      'GPVC', 'SFVC',
      $jfei4krni$[{"t":"p","text":"繊細な感性と低強度への志向を共有する、穏やかなペアです。どちらも運動を通じて心を落ち着かせ、無理のない範囲で体を動かすことに喜びを感じます。なりたい同士として、相手の体調や気分の揺れを敏感に察知し、労わり合える関係を築きやすいです。しかし、基準型が「仲間との約束」を継続の糧とするのに対し、相手は「一人での自由」を好むため、運動の頻度や参加の形態を巡って、基準型が一人で期待を抱えすぎる傾向があります。"}]$jfei4krni$::jsonb,
      $j4662oupn$[{"t":"p","text":"基準型が日時を固定した定例会を用意しつつも、相手に対しては「気が向いた時だけの一人参加」を公認し、たまに合流できた時間を特別に喜ぶような距離感を保ちます。"},{"t":"p","text":"どちらもなりたい同士の繊細さを持つため、運動の最中に感じた景色や空気の心地よさを、短い言葉や写真で共有し合うことで、情緒的なつながりを深めます。"},{"t":"p","text":"計画をガチガチに固めず、当日の二人の「心の重さ」に合わせて、歩く距離を短縮したりカフェでの休憩に切り替えたりできるような、柔軟なプランを共有します。"}]$j4662oupn$::jsonb,
      $jfwqhl23x$[{"t":"p","text":"基準型が「来週も一緒に歩きましょう」と誠実に約束を求めた際、気分を優先したい相手はプレッシャーを感じてしまい、逆に基準型は相手の曖昧な返答に不安を覚えます。"},{"t":"p","text":"どちらも繊細で相手を傷つけることを恐れるため、運動の内容に違和感があっても我慢してしまい、ある日突然、一方が燃え尽きて運動を辞めてしまいます。"},{"t":"p","text":"相手が一人で静かに動きたい時に、基準型が良かれと思って他の仲間を大勢誘ってしまうと、相手は居場所を失ったと感じてコミュニティから離脱します。"}]$jfwqhl23x$::jsonb,
      $jhb63bm28$[]$jhb63bm28$::jsonb
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
      'GPVC', 'SFVH',
      $ji96qjdsh$[{"t":"p","text":"なりたい由来の繊細な感受性を共有しながらも、運動の表現方法が真逆であるため、構造的なすれ違いが生じやすいです。基準型は仲間との約束を誠実に守り、穏やかな活動を続けることで心の安定を図りますが、相手は自分の内なる葛藤や情熱を一人での高強度トレーニングにぶつけ、限界を突破しようとします。相手の激しさと予測不能な行動は、平穏な場を維持したい基準型にとって心理的な脅威となり、同じ活動空間を共有することは困難を極めます。"}]$ji96qjdsh$::jsonb,
      $jn7ang6ak$[{"t":"p","text":"互いの運動スタイルを「静」と「動」の極致として尊重し、直接一緒に動くのではなく、相手が挑んだ過酷な記録を基準型が承認する関係に留めます。"},{"t":"p","text":"相手が感情を爆発させてトレーニングに没頭している間、基準型はあえて距離を置き、相手が落ち着いたタイミングで短い労いのメッセージを送るような非同期の接点を持つのも手です。"},{"t":"p","text":"なりたい同士として、運動の技術よりも「なぜそこまでして動くのか」という内面的な動機について深く語り合う時間を持ち、精神的な理解者としての地位を築きます。"}]$jn7ang6ak$::jsonb,
      $jy4hrhps4$[{"t":"p","text":"相手がその日の感情の高ぶりに任せて「今から山を走ってくる」と計画を無視した行動をとると、誠実な準備を重んじる基準型は、自分の存在を無視されたと感じて絶望します。"},{"t":"p","text":"基準型が全員の安全を考えて提示した低強度のメニューに対し、相手が「ぬるすぎる」と苛立ちを露わにすると、基準型は自分の気配りを否定されたと感じて深く傷つきます。"},{"t":"p","text":"どちらも繊細で感情が激しく揺れやすいため、運動中の些細な衝突が「自分は理解されていない」という深刻な被害意識に繋がり、絶縁に近い状態まで悪化しやすいです。"}]$jy4hrhps4$::jsonb,
      $jmgx0dh7m$[]$jmgx0dh7m$::jsonb
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
      'GPVC', 'SPMC',
      $jcrgz9l16$[{"t":"p","text":"計画的に低強度の運動を継続するスタイルが一致しており、身体的なペース配分においては非常に安定したペアです。どちらも日々のルーティンを大切にし、無理な負荷を避けて着実に体を整えることに価値を置きます。しかし、基準型が仲間との約束を継続の支えとするのに対し、相手は一人で思索しながら淡々と動くことを好みます。相手の感情に左右されない安定感は基準型を落ち着かせますが、基準型のコミュニティへの強い帰属意識が相手には重荷になることもあります。"}]$jcrgz9l16$::jsonb,
      $jh2ze32rl$[{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月先のウォーキング大会や健康目標に向けた詳細なトレーニングメニューを二人で論理的に作成し、進捗を報告し合います。"},{"t":"p","text":"基準型が主催する定例会に相手を「特別顧問」のような一歩引いた立場で招き、相手が一人で深めた運動の知識やコツをメンバーに共有してもらう場を作ります。"},{"t":"p","text":"運動の最中は無理に会話を盛り上げようとせず、周囲の景色や自分の身体感覚に集中する「静かな時間」を共有することで、整える型同士の心地よい共鳴を楽しみます。"}]$jh2ze32rl$::jsonb,
      $jwjh0xg2b$[{"t":"p","text":"基準型が「全員で揃って動くこと」を強調しすぎると、一人の自律性を重んじる相手は監視されているような窮屈さを感じ、運動への意欲を急速に失います。"},{"t":"p","text":"相手が合理的な理由で「今日は一人でやりたい」と告げた際、仲間との絆を信じる基準型は、自分たちの関係が軽視されたと誤解して深く傷つきます。"},{"t":"p","text":"基準型が活動後の反省会で感情的な悩みを打ち明けた際、ありたいな相手が「それは計画の問題だ」と冷淡に分析して解決策だけを提示すると、基準型は突き放されたと感じます。"}]$jwjh0xg2b$::jsonb,
      $jv0h3mvb0$[]$jv0h3mvb0$::jsonb
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
      'GPVC', 'SPMH',
      $j4dcsftod$[{"t":"p","text":"計画的に動くという方法論のみを共有する、ビジネスライクな協力関係になりやすいペアです。基準型は全員が継続できるための計画を立てますが、相手は自分が最高の結果を出すためのストイックな計画を立てます。相手のありたい由来の揺るぎない自信は基準型に安心感を与えることもありますが、相手の個人主義と高負荷志向は、基準型が守りたい「全員参加の穏やかな場」とは本質的に相容れないため、運動の現場では別行動が基本となります。"}]$j4dcsftod$::jsonb,
      $j1ub7w2ok$[{"t":"p","text":"相手が持つ「目標達成のためのトレーニング理論」を基準型が学び、それをコミュニティのメンバーが安全に実践できるレベルに翻訳して導入します。"},{"t":"p","text":"どちらも計画を重視するため、お互いのトレーニングログや記録を数値で共有し、客観的なデータに基づいてアドバイスし合う「コーチング的」な関係を築きます。"},{"t":"p","text":"相手が挑む過酷なレースや挑戦に対し、基準型が「応援団長」としてコミュニティの仲間を率いて応援に行き、相手の孤独な挑戦を外側から支えます。"}]$j1ub7w2ok$::jsonb,
      $jlw53k19k$[{"t":"p","text":"相手が「もっとストイックに追い込むべきだ」と基準型のコミュニティ運営に口を出すと、全員の脱落を防ぎたい基準型は、自分の気配りを台無しにされたと感じて憤慨します。"},{"t":"p","text":"基準型が相手を無理にグループの懇親会や定例練習に誘い続けると、一人の時間を愛する相手は基準型を「非効率で重い存在」と見なして距離を置きます。"},{"t":"p","text":"相手が結果の出ない参加者を切り捨てるような発言をすると、一人ひとりの誠実な歩みを尊重する基準型は、相手の価値観を冷酷だと感じて心理的な拒絶反応を起こします。"}]$jlw53k19k$::jsonb,
      $j3o99mu3i$[]$j3o99mu3i$::jsonb
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
      'GPVC', 'SPVC',
      $jau13a0p7$[{"t":"p","text":"計画的に、繊細に、低強度の運動を続ける姿勢が完全に一致する組み合わせです。どちらも「一度始めたことは誠実に続けなければならない」という強い責任感を持ち、日々の積み重ねを心の支えとしています。基準型が作る安定したコミュニティの場は、一人で動くことを好む相手にとっても「自分のルーティンの一部」として組み込みやすく、互いの継続を静かに支え合う理想的な補完関係が成立します。"}]$jau13a0p7$::jsonb,
      $j2as2nnwl$[{"t":"p","text":"基準型が毎週同じ時間・同じコースでの活動を徹底して提供し、相手がそれを自分の生活リズムの中に「欠かせない習慣」として自然に組み込めるようにします。"},{"t":"p","text":"どちらもなりたい由来の繊細さを持つため、運動の後に「今週も無事に続けられた」という達成感を短い言葉で分かち合い、互いの誠実さを承認し合います。"},{"t":"p","text":"相手が一人で培ってきた効率的なストレッチやケアの方法を基準型が教わり、それをコミュニティの全員が実践できるような標準メニューとして採用します。"}]$j2as2nnwl$::jsonb,
      $jj5yc3al8$[{"t":"p","text":"相手が自分の厳格な個人ルーティンを優先してコミュニティの特別行事を欠席した際、仲間との一体感を重んじる基準型は、自分たちの絆が軽視されたと感じて傷つきます。"},{"t":"p","text":"どちらも繊細で「相手に迷惑をかけたくない」という想いが強すぎるため、体調不良などで運動を休む際の連絡が過度に丁寧になり、かえって心理的な負担を増大させます。"},{"t":"p","text":"基準型がコミュニティの活性化のために急な内容変更を行うと、決まった手順で動くことで安心を得ている相手は、自分のリズムを壊されたと感じて強いストレスを抱きます。"}]$jj5yc3al8$::jsonb,
      $j1vluxu8s$[]$j1vluxu8s$::jsonb
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
      'GPVC', 'SPVH',
      $jrwqqihkh$[{"t":"p","text":"運動に対して真剣に向き合い、計画的に取り組む姿勢を共有するペアです。どちらもなりたい由来の強い感受性を持ち、「自分はこうありたい」という理想に向けて誠実に努力することを厭いません。しかし、基準型が仲間との約束を支えに穏やかに続けるのに対し、相手は一人で自分を追い込み、内なる限界を突破することに情熱を注ぎます。互いの「真剣さ」は理解し合えますが、運動の強度と社会性の不一致により、現場での協力には工夫が必要となります。"}]$jrwqqihkh$::jsonb,
      $jcuvoimsm$[{"t":"p","text":"相手が一人で挑む高強度のチャレンジに対し、基準型がそのコンディショニングやスケジュール管理をサポートする「マネージャー」的な役割を担います。"},{"t":"p","text":"どちらも逆算思考が得意なため、数ヶ月に一度、お互いの長期的な運動計画を突き合わせて、論理的な矛盾や無理がないかを繊細な視点でチェックし合う会議を持ちます。"},{"t":"p","text":"相手がストイックになりすぎて心が折れそうな時に、基準型が「あなたは十分頑張っている」と感情的に寄り添うことで、相手の孤独な挑戦を精神的に支えます。"}]$jcuvoimsm$::jsonb,
      $jmvoau78m$[{"t":"p","text":"相手が「もっと自分を追い込むべきだ」と基準型の穏やかな活動を批判した際、誠実に場を守っている基準型は、自分の生き方そのものを否定されたと感じて深く落ち込みます。"},{"t":"p","text":"どちらも繊細で傷つきやすいため、運動中の些細なアドバイスが「自分の努力が足りない」という責め言葉に聞こえてしまい、互いに殻に閉じこもって対話が途絶えます。"},{"t":"p","text":"基準型が相手をグループの定例練習に誘いすぎると、一人で集中したい相手は「自分の成長を妨げる重荷」として基準型を避け始め、信頼関係が崩壊します。"}]$jmvoau78m$::jsonb,
      $jhbl1taoz$[]$jhbl1taoz$::jsonb
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
      'GPVH', 'GFMC',
      $jgs95sj0t$[{"t":"p","text":"集団での目標達成を至上命題とする側と、場を盛り上げる体験を重視する側との組み合わせです。複数人という共通基盤があるため、同じ空間で活動すること自体への抵抗は少ないです。しかし、緻密なトレーニング計画を完遂したい側と、その場の気分や楽しさを優先したい側では、練習メニューの決定プロセスにおいて根本的な差異が存在します。さらに、理想の自分を目指して限界を突破しようとする姿勢と、現在の心身の状態を整えることを目的とする姿勢が交差するため、一回のセッションに求める運動強度や心理的熱量において大きな温度差が生じやすいです。"}]$jgs95sj0t$::jsonb,
      $jt714viwy$[{"t":"p","text":"チームスポーツやグループワークアウトなど、他者の存在が刺激になる環境を選ぶことが効果的です。"},{"t":"p","text":"事前の計画は最低限の集合時間と場所の決定に留め、具体的な運動内容については当日の体調や雰囲気に合わせて調整できる余白を残すことが求められます。"},{"t":"p","text":"高負荷なメインメニューと軽めの調整メニューを並行して行える施設やプログラムを選択し、同じ空間にいながら異なる負荷レベルを許容する工夫が必要です。"}]$jt714viwy$::jsonb,
      $jevrcp5gb$[{"t":"p","text":"集団での活動を好むがゆえに、チーム内での貢献度や熱量に対する期待値がずれやすく、一方が相手の参加姿勢を「不真面目」だと感じてしまうリスクがあります。"},{"t":"p","text":"計画通りにトレーニングを進めたい側と気分で動きたい側との間で、スケジュール調整やメニュー変更のたびにフラストレーションが蓄積しやすいです。"},{"t":"p","text":"感情を燃やして高い目標に向かう側と、穏やかに現状を維持したい側との間で、不調時の対応において心理的な断絶が生じやすいです。"}]$jevrcp5gb$::jsonb,
      $js6u3p8hw$[]$js6u3p8hw$::jsonb
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
      'GPVH', 'GFMH',
      $jliq1h9bb$[{"t":"p","text":"集団での活動と高い運動強度を求める点において、非常に強力なエネルギーを生み出す組み合わせです。共に限界まで追い込むことを厭わないため、ハードなトレーニングや競技において高い成果を追求できます。しかし、長期的な計画に基づき着実にステップアップしたい側と、その瞬間の高揚感や熱狂的な体験を求める側では、継続のメカニズムが異なります。感情を爆発させて目標に突き進む姿勢と、常に一定の精神状態を保ちながら成果を出そうとする姿勢が交差するため、イベント後のモチベーション維持において温度差が生じやすいです。"}]$jliq1h9bb$::jsonb,
      $jynbrs7uv$[{"t":"p","text":"互いに高い負荷を求める特性を最大限に活かし、マラソン大会や競技会など、明確な挑戦の場を共有することが推奨されます。"},{"t":"p","text":"事前の計画は「この大会で結果を出す」といった大きなマイルストーンに絞り、日々のメニューには相手がその日の気分で爆発的な力を発揮できるような柔軟性を持たせることが効果的です。"},{"t":"p","text":"運動後の達成感を共有する時間を設け、成果だけでなくその過程での感情的なつながりを確認し合うことが重要です。"}]$jynbrs7uv$::jsonb,
      $jvgqjw4xh$[{"t":"p","text":"計画通りに段階を踏んで強度を上げたい側と、その日の気分で突発的に限界に挑みたい側との間で、オーバーワークや怪我のリスク管理を巡って意見が対立しやすいです。"},{"t":"p","text":"長期的なチームの成長を計画する側にとって、イベントが終わると急激に熱が冷めてしまう相手の振る舞いは、無責任や裏切りとして映るリスクがあります。"},{"t":"p","text":"感情を露わにして鼓舞し合うことを求める側と、淡々と結果のみを追求する側との間で、共感の欠如による不満が生じやすいです。"}]$jvgqjw4xh$::jsonb,
      $jpljukyzj$[]$jpljukyzj$::jsonb
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
