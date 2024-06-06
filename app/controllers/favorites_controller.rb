class FavoritesController < ApplicationController
  before_action :authenticate_user!
 

  def index
    @favorite_buyer_ids = current_user.favorites.pluck(:buyer_id)
    @favorite_buyers = Buyer.where(id: @favorite_buyer_ids)
  end

  def create
    favorite = current_user.favorites.build(buyer_id: params[:buyer_id],user_id: params[:user_id])
    favorite.save
    redirect_to root_path
  end

end
