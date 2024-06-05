class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '車' },
    { id: 2, name: '不動産' },
    { id: 3, name: '家電' },
    { id: 4, name: '家具' },
    { id: 5, name: 'ファッション' },
    { id: 6, name: 'ブランド品' },
    { id: 7, name: '書籍・メディア' },
    { id: 8, name: 'ゲーム・玩具' },
    { id: 9, name: 'スポーツ用品' },
    { id: 10, name: '楽器' },
    { id: 11, name: '貴金属' },
    { id: 12, name: '骨董品・美術品' },
    { id: 13, name: 'カメラ' },
    { id: 14, name: 'コンピュータ・オフィス機器' },
    { id: 15, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :dealers
  has_many :buyers
end
