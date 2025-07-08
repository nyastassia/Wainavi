# db/seeds/wineries.rb
winery1 = Winery.find_or_initialize_by(title: "あいざわ農園").tap do |w|
  w.assign_attributes(
    open_days_and_time: "情報なし",
    wine_region_id: 1,
    tasting_type_id: 9,
    winery_type_id: 2,
    description: "完全無農薬・無化学肥料で栽培したぶどうを使用。北海道十勝地方の自然の中でワイン、ジュース、ジャムを生産。自社畑で育てたぶどうを用いた自社醸造ワインを提供。",
    address: "帯広市以平町西9線21-1",
    website: "https://aizawa-nouen.com",
    phone: "0155-63-7723"
  )
  w.grape_variety_ids = [1, 2, 3, 4, 5]
  w.wine_style_ids = [5, 6, 4, 1]
  w.award_ids = []
  w.experience_ids = []
  w.dining_ids = []
  w.save! if w.changed? || w.new_record?
end


winery2 = Winery.find_or_initialize_by(title: "OSA WINERY（オサワイナリー）").tap do |w|
  w.assign_attributes(
    open_days_and_time: "毎週土曜日 13:00～17:00（収穫期は休業）",
    wine_region_id: 1,
    tasting_type_id: 3,
    winery_type_id: 1,
    description: "北海道小樽市にある夫婦2人が営む小さなワイナリー。化学肥料・除草剤不使用で環境に配慮したブドウ栽培を実践。...",
    address: "北海道小樽市色内1丁目6-4 OSA WINERY 2F",
    website: "https://osawinery.com/aboutus/",
    phone: "0134-61-1955"
  )
  w.grape_variety_ids = [6, 8, 10, 11, 21, 13, 14, 16, 17, 18, 19, 27, 28]
  w.wine_style_ids = [1, 2, 4]
  w.award_ids = []
  w.experience_ids = []
  w.dining_ids = []
  w.save! if w.changed? || w.new_record?
end

winery3 = Winery.find_or_initialize_by(title: "丸藤葡萄酒工業(株)").tap do |w|
  w.assign_attributes(
   open_days_and_time: "無休（年末年始除く）9:00～16:30",
   wine_region_id: 19,
   tasting_type_id: 3,
   winery_type_id: 4,
   description: "明治23年創業。甲州種を中心に日本ワインを世界に誇る品質で造る老舗。欧州系品種の栽培にも挑戦し、辛口ワインにこだわる。",
   address: "山梨県甲州市勝沼町藤井780",
   website: "https://www.rubaiyat.jp/",
   phone: "0553-44-0043"
  )
  w.grape_variety_ids = [7, 8, 20, 22, 23, 24, 37]
  w.wine_style_ids = [1, 2, 4, 5, 6]
  w.award_ids = [24, 23]
  w.experience_ids = []
  w.dining_ids = []
  w.save! if w.changed? || w.new_record?
end