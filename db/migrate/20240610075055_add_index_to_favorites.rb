class AddIndexToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_index :favorites, [:user_id, :buyer_id], unique: true
  end
end
