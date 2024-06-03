class Dealer < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Dealer One', category_id: 1, url: 'hoge' },
    { id: 2, name: 'Dealer Two', category_id: 2, url: 'hoge' },
    { id: 3, name: 'Dealer Three', category_id: 3, url: 'hoge' }
  ]

  include ActiveHash::Associations
  has_many :favorites
  belongs_to :category
end