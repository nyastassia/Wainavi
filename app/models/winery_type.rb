class WineryType < ActiveHash::Base
  self.data = [
    { id: 1, name: '家族経営ワイナリー' },
    { id: 2, name: '大規模生産ワイナリー' },
    { id: 3, name: 'クラフトワイナリー' },
    { id: 4, name: '都市型ワイナリー' },
    { id: 5, name: '観光ワイナリー' },
    { id: 6, name: '農業法人ワイナリー' },
    { id: 7, name: 'ブティックワイナリー' },
    { id: 8, name: '実験的・研究型ワイナリー' }
  ]

  include ActiveHash::Associations
  has_many :wineries
end