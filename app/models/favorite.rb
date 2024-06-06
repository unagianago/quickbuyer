class Favorite < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :buyer, class_name: 'Buyer'
end
