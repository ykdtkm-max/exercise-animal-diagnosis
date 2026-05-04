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