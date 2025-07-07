grape_varieties = [
  # 日本固有 / 白
  { name: "清舞", category: "日本固有/白" },
  { name: "清見", category: "日本固有/白" },
  { name: "いちな", category: "日本固有/白" },
  { name: "旅路", category: "日本固有/白" },
  { name: "甲州", category: "日本固有/白" },

  # 日本固有 / 赤
  { name: "ヤマブドウ", category: "日本固有/赤" },
  { name: "山幸", category: "日本固有/赤" },
  { name: "マスカット・ベーリーA", category: "日本固有/赤" },
  { name: "ベリー・アリカント", category: "日本固有/赤" },
  { name: "ブラック・クイーン", category: "日本固有/赤" },

  # 白
  { name: "シャルドネ", category: "白" },
  { name: "ピノグリ", category: "白" },
  { name: "ゲヴェルツトラミネール", category: "白" },
  { name: "アルバリーニョ", category: "白" },
  { name: "ヴィオニエ", category: "白" },
  { name: "マルヴァジア", category: "白" },
  { name: "ケルナー", category: "白" },
  { name: "デラウエア", category: "白" },
  { name: "ナイアガラ", category: "白" },
  { name: "ソーヴィニヨン・ブラン", category: "白" },
  { name: "ピノ・グリ", category: "白" },
  { name: "ゲヴュルツトラミナー", category: "白" },
  { name: "リースリング", category: "白" },
  { name: "シュナン・ブラン", category: "白" },
  { name: "セミヨン", category: "白" },
  { name: "トロンテス", category: "白" },
  { name: "ジルヴァーナー", category: "白" },
  { name: "グリューナー・フェルトリーナー", category: "白" },
  { name: "ヴェルメンティーノ", category: "白" },

  # 赤
  { name: "ピノノワール", category: "赤" },
  { name: "カベルネ・ソーヴィニヨン", category: "赤" },
  { name: "メルロー", category: "赤" },
  { name: "プティ・ヴェルド", category: "赤" },
  { name: "ツヴァイゲルトレーベ", category: "赤" },
  { name: "キャンベルアーリー", category: "赤" },
  { name: "シラー", category: "赤" },
  { name: "カベルネ・フラン", category: "赤" },
  { name: "ガメイ", category: "赤" },
  { name: "サンジョヴェーゼ", category: "赤" },
  { name: "ネッビオーロ", category: "赤" },
  { name: "バルベーラ", category: "赤" },
  { name: "モンテプルチアーノ", category: "赤" },
  { name: "アリアニコ", category: "赤" },
  { name: "テンプラニーリョ", category: "赤" },
  { name: "ドルンフェルダー", category: "赤" },
  { name: "ジンファンデル", category: "赤" }
]

grape_varieties.each do |grape|
  GrapeVariety.find_or_create_by!(name: grape[:name], category: grape[:category])
end

