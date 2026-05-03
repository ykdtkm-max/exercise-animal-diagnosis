/* キャラクターデータ (画像パス・背景色・称号) */
/* img     : 黒シルエット版 (トップページ用)      */
/* imgFull : フルカラー版   (詳細・結果画面用)    */
window.CHAR_DATA = {
  "SFAC": { img:"chars/sloth.svg",    imgFull:"character/ナマケモノ.svg", tint:"#FFE9C2", no:"01", title:"気まぐれ散策者", animal:"ナマケモノ" },
  "SFAD": { img:"chars/corgi.svg",    imgFull:"character/コーギー.svg",   tint:"#FFE0D6", no:"02", title:"直感の冒険家",   animal:"コーギー" },
  "SFTC": { img:"chars/octopus.svg",  imgFull:"character/タコ.svg",       tint:"#FFE2EF", no:"03", title:"ほっこり探索者", animal:"タコ" },
  "SFTD": { img:"chars/wolf.svg",     imgFull:"character/オオカミ.svg",   tint:"#DDF1FF", no:"04", title:"全力一匹狼",     animal:"オオカミ" },
  "SPAC": { img:"chars/hamster.svg",  imgFull:"character/ハムスター.svg", tint:"#FFF6CB", no:"05", title:"ゆるり哲学者",   animal:"ハムスター" },
  "SPAD": { img:"chars/cheetah.svg",  imgFull:"character/チーター.svg",   tint:"#FFEBC2", no:"06", title:"孤高の挑戦者",   animal:"チーター" },
  "SPTC": { img:"chars/beaver.svg",   imgFull:"character/ビーバー.svg",   tint:"#FFD9D2", no:"07", title:"ルーティン課長", animal:"ビーバー" },
  "SPTD": { img:"chars/deer.svg",     imgFull:"character/シカ.svg",       tint:"#ECE0FF", no:"08", title:"自己超越者",     animal:"シカ" },
  "GFAC": { img:"chars/penguin.svg",  imgFull:"character/ペンギン.svg",   tint:"#DDE2FF", no:"09", title:"盛り上げ隊長",   animal:"ペンギン" },
  "GFAD": { img:"chars/zebra.svg",    imgFull:"character/シマウマ.svg",   tint:"#E8E8E8", no:"10", title:"お祭り遊牧民",   animal:"シマウマ" },
  "GFTC": { img:"chars/flamingo.svg", imgFull:"character/フラミンゴ.svg", tint:"#FFEAF2", no:"11", title:"温もり提供者",   animal:"フラミンゴ" },
  "GFTD": { img:"chars/eagle.svg",    imgFull:"character/ワシ.svg",       tint:"#F2DCC2", no:"12", title:"熱狂伝道者",     animal:"ワシ" },
  "GPAC": { img:"chars/elephant.svg", imgFull:"character/ゾウ.svg",       tint:"#DDF1FF", no:"13", title:"コミュニティ長老", animal:"ゾウ" },
  "GPAD": { img:"chars/lion.svg",     imgFull:"character/ライオン.svg",   tint:"#D8F5DD", no:"14", title:"勝利の女神",     animal:"ライオン" },
  "GPTC": { img:"chars/orca.svg",     imgFull:"character/シャチ.svg",     tint:"#FBD6E1", no:"15", title:"チームの守り神", animal:"シャチ" },
  "GPTD": { img:"chars/gorilla.svg",  imgFull:"character/ゴリラ.svg",     tint:"#DAD4E0", no:"16", title:"熱血キャプテン", animal:"ゴリラ" },
};

/* 軸情報 */
window.AXIS_INFO = [
  { letter:"S/G", left:{ k:"S", label:"SOLO",       desc:"個人で集中したい" }, right:{ k:"G", label:"GROUP",    desc:"仲間と動きたい" } },
  { letter:"F/P", left:{ k:"F", label:"FREE",        desc:"気分で動く" },       right:{ k:"P", label:"PLAN",     desc:"決めて動く" } },
  { letter:"A/T", left:{ k:"A", label:"ACTION",      desc:"動きながら考える" }, right:{ k:"T", label:"THOUGHT",  desc:"考えてから動く" } },
  { letter:"C/D", left:{ k:"C", label:"CONTINUOUS",  desc:"じっくり続ける" },   right:{ k:"D", label:"DECISIVE", desc:"短期で燃える" } },
];

/* charImg(code) — シルエット画像 HTML (トップページ用) */
window.charImg = function(code, alt) {
  var c = (window.CHAR_DATA || {})[code];
  if (!c) return '';
  return '<img src="' + c.img + '" alt="' + (alt || c.animal) + '" loading="lazy">';
};
