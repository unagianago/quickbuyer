class Procedure < ActiveHash::Base
  self.data = [
    { id: 1, name: '持ち込み' },
    { id: 2, name: '郵送' },
    { id: 3, name: '出張' },
    { id: 4, name: 'オンライン査定' }
  ]

  include ActiveHash::Associations
  has_many :buyers
end
