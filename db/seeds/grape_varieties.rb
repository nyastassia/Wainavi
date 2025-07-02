# 🟠 日本固有品種・土着品種
# GrapeVariety.find_or_create_by!(name: "ヤマブドウ", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "山幸", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "清舞", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "清見", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "いちな", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "旅路", category: "日本固有")
# GrapeVariety.find_or_create_by!(name: "甲州", category: "日本固有")

# ⚪️ 白ワイン用品種
# GrapeVariety.find_or_create_by!(name: "シャルドネ", category: "白")
# GrapeVariety.find_or_create_by!(name: "ソーヴィニヨン・ブラン", category: "白")
# GrapeVariety.find_or_create_by!(name: "ピノグリ", category: "白")
# GrapeVariety.find_or_create_by!(name: "ピノ・グリ", category: "白")
# GrapeVariety.find_or_create_by!(name: "ゲヴェルツトラミネール", category: "白")
# GrapeVariety.find_or_create_by!(name: "ゲヴュルツトラミナー", category: "白")
# GrapeVariety.find_or_create_by!(name: "リースリング", category: "白")
# GrapeVariety.find_or_create_by!(name: "シュナン・ブラン", category: "白")
# GrapeVariety.find_or_create_by!(name: "セミヨン", category: "白")
# GrapeVariety.find_or_create_by!(name: "ヴィオニエ", category: "白")
# GrapeVariety.find_or_create_by!(name: "アルバリーニョ", category: "白")
# GrapeVariety.find_or_create_by!(name: "トロンテス", category: "白")
# GrapeVariety.find_or_create_by!(name: "ジルヴァーナー", category: "白")
# GrapeVariety.find_or_create_by!(name: "グリューナー・フェルトリーナー", category: "白")
# GrapeVariety.find_or_create_by!(name: "ヴェルメンティーノ", category: "白")
# GrapeVariety.find_or_create_by!(name: "マルヴァジア", category: "白")
# GrapeVariety.find_or_create_by!(name: "ケルナー", category: "白")
# GrapeVariety.find_or_create_by!(name: "デラウエア", category: "白")
# GrapeVariety.find_or_create_by!(name: "ナイアガラ", category: "白")

# 🔴 赤ワイン用品種
# GrapeVariety.find_or_create_by!(name: "ピノノワール", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ピノ・ノワール", category: "赤")
# GrapeVariety.find_or_create_by!(name: "シラー", category: "赤")
# GrapeVariety.find_or_create_by!(name: "カベルネ・ソーヴィニヨン", category: "赤")
# GrapeVariety.find_or_create_by!(name: "メルロー", category: "赤")
# GrapeVariety.find_or_create_by!(name: "プティ・ヴェルド", category: "赤")
# GrapeVariety.find_or_create_by!(name: "カベルネ・フラン", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ガメイ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "サンジョヴェーゼ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ネッビオーロ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "バルベーラ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "モンテプルチアーノ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "アリアニコ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "テンプラニーリョ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ドルンフェルダー", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ジンファンデル", category: "赤")
# GrapeVariety.find_or_create_by!(name: "ツヴァイゲルトレーベ", category: "赤")
# GrapeVariety.find_or_create_by!(name: "キャンベルアーリー", category: "赤")

# 🟠 日本固有品種・土着品種
#%w[ヤマブドウ 山幸 清舞 清見 いちな 旅路 甲州].each do |name|
 # GrapeVariety.find_or_create_by!(name: name) { |g| g.category = "日本固有" }
#end

# ⚪️ 白ワイン用品種
#%w[
 # シャルドネ ソーヴィニヨン・ブラン ピノグリ ピノ・グリ ゲヴェルツトラミネール
 # ゲヴュルツトラミナー リースリング シュナン・ブラン セミヨン ヴィオニエ
 # アルバリーニョ トロンテス ジルヴァーナー グリューナー・フェルトリーナー
 # ヴェルメンティーノ マルヴァジア ケルナー デラウエア ナイアガラ
#].each do |name|
#  GrapeVariety.find_or_create_by!(name: name) { |g| g.category = "白" }
#end

# 🔴 赤ワイン用品種
#%w[
 # ピノノワール ピノ・ノワール シラー カベルネ・ソーヴィニヨン メルロー プティ・ヴェルド
 # カベルネ・フラン ガメイ サンジョヴェーゼ ネッビオーロ バルベーラ モンテプルチアーノ
 # アリアニコ テンプラニーリョ ドルンフェルダー ジンファンデル ツヴァイゲルトレーベ
 # キャンベルアーリー
#].each do |name|
 # GrapeVariety.find_or_create_by!(name: name) { |g| g.category = "赤" }
#end