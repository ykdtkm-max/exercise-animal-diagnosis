/* キャラクターデータ (画像パス・背景色・動物名) */
/* img     : 黒シルエット版 (トップページ用)    */
/* imgFull : フルカラー版   (詳細・結果画面用)  */
window.CHAR_DATA = {
  "SFMC": { img:"chars/sloth.svg",    imgFull:"character/ナマケモノ.svg", tint:"#FFE9C2", animal:"ナマケモノ" },
  "SFMD": { img:"chars/corgi.svg",    imgFull:"character/コーギー.svg",   tint:"#FFE0D6", animal:"コーギー" },
  "SFVC": { img:"chars/octopus.svg",  imgFull:"character/タコ.svg",       tint:"#FFE2EF", animal:"タコ" },
  "SFVD": { img:"chars/wolf.svg",     imgFull:"character/オオカミ.svg",   tint:"#DDF1FF", animal:"オオカミ" },
  "SPMC": { img:"chars/hamster.svg",  imgFull:"character/ハムスター.svg", tint:"#FFF6CB", animal:"ハムスター" },
  "SPMD": { img:"chars/cheetah.svg",  imgFull:"character/チーター.svg",   tint:"#FFEBC2", animal:"チーター" },
  "SPVC": { img:"chars/beaver.svg",   imgFull:"character/ビーバー.svg",   tint:"#FFD9D2", animal:"ビーバー" },
  "SPVD": { img:"chars/deer.svg",     imgFull:"character/シカ.svg",       tint:"#ECE0FF", animal:"シカ" },
  "GFMC": { img:"chars/penguin.svg",  imgFull:"character/ペンギン.svg",   tint:"#DDE2FF", animal:"ペンギン" },
  "GFMD": { img:"chars/zebra.svg",    imgFull:"character/シマウマ.svg",   tint:"#E8E8E8", animal:"シマウマ" },
  "GFVC": { img:"chars/flamingo.svg", imgFull:"character/フラミンゴ.svg", tint:"#FFEAF2", animal:"フラミンゴ" },
  "GFVD": { img:"chars/eagle.svg",    imgFull:"character/ワシ.svg",       tint:"#F2DCC2", animal:"ワシ" },
  "GPMC": { img:"chars/elephant.svg", imgFull:"character/ゾウ.svg",       tint:"#DDF1FF", animal:"ゾウ" },
  "GPMD": { img:"chars/lion.svg",     imgFull:"character/ライオン.svg",   tint:"#D8F5DD", animal:"ライオン" },
  "GPVC": { img:"chars/orca.svg",     imgFull:"character/シャチ.svg",     tint:"#FBD6E1", animal:"シャチ" },
  "GPVD": { img:"chars/gorilla.svg",  imgFull:"character/ゴリラ.svg",     tint:"#DAD4E0", animal:"ゴリラ" },
};

/* 軸情報（Supabase exercise_app_settings.axis_info からも取得・上書きされる） */
window.AXIS_INFO = [
  { letter:"S/G", left:{ k:"S", label:"SOLO",   desc:"一人" },    right:{ k:"G", label:"GROUP",  desc:"複数人" } },
  { letter:"F/P", left:{ k:"F", label:"FREE",   desc:"気分" },    right:{ k:"P", label:"PLAN",   desc:"計画" } },
  { letter:"M/V", left:{ k:"M", label:"MOMENT", desc:"ありたい" }, right:{ k:"V", label:"VISION", desc:"なりたい" } },
  { letter:"C/D", left:{ k:"C", label:"CHILL",  desc:"整える" },  right:{ k:"D", label:"DRIVE",  desc:"高める" } },
];
