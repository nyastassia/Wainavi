class TastingType < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カウンターテイスティング' },    
    { id: 2, name: 'テラスまたは屋外テイスティング' }, 
    { id: 3, name: '有料テイスティング' },       
    { id: 4, name: '無料テイスティング' },        
    { id: 5, name: '予約制テイスティング' },          
    { id: 6, name: '試飲セット提供' },               
    { id: 7, name: '限定ワインの試飲' },  
    { id: 8, name: 'フードペアリング付き' },
    { id: 9, name: '無し' }             
  ]

  include ActiveHash::Associations
  has_many :wineries
end