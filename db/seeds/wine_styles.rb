# ワインスタイル (Wine Styles)

[
  "スパークリング", # Sparkling
  "白ワイン（辛口）", # White (Dry)
  "白ワイン（甘口）", # White (Sweet)
  "ロゼ", # Rosé
  "赤ワイン（ライトボディ）", # Red (Light body)
  "赤ワイン（フルボディ）", # Red (Full-body)
  "デザートワイン", # Dessert wine
  "オレンジワイン" # Orange wine
].each do |name|
  WineStyle.find_or_create_by!(name: name)
end