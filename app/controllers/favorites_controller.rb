class FavoritesController < ApplicationController
  before_action :authenticate_user!
 

  def index
    @favorite_buyer_ids = current_user.favorites.pluck(:buyer_id)
    @favorite_buyers = Buyer.where(id: @favorite_buyer_ids)
  end

end
