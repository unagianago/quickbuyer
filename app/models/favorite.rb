class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to_active_hash :buyer
end
