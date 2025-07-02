Dining.delete_all

dinings = [
  "レストラン併設",         
  "ワインバー併設",          
  "軽食・カフェ併設",         
  "テラス席あり",              
  "ピクニック体験",           
  "地元食材とのペアリング",     
  "バーベキュー"
]

dinings.each do |name|
  Dining.find_or_create_by!(name: name)
end