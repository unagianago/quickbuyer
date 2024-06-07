class Favorite < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :buyer, class_name: 'Buyer'

  validates :buyer_id, numericality: true, presence: true
  validates :user_id, numericality: true, presence: true

  validates :user_id, uniqueness: { scope: :buyer_id }
end
