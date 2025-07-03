class WineryType < ActiveHash::Base
  self.data = [
    { id: 1, name: '家族経営ワイナリー' },
    { id: 2, name: '農園型ワイナリー' },
    { id: 3, name: '老舗' },
    { id: 4, name: '家族経営・老舗ワイナリー' },
    { id: 5, name: 'クラフトワイナリー' },
    { id: 6, name: '都市型ワイナリー' },
    { id: 7, name: '観光ワイナリー' },
    { id: 8, name: '大規模生産ワイナリー' },
    { id: 9, name: 'ブティックワイナリー' },
    { id: 10, name: '実験的・研究型ワイナリー' }
  ]

  include ActiveHash::Associations
  has_many :wineries
end