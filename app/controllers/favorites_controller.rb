class FavoritesController < ApplicationController
  before_action :authenticate_user!
 

  def index
    if current_user.id != params[:user_id].to_i
      redirect_to root_path
    else
      @favorite_buyer_ids = current_user.favorites.pluck(:buyer_id)
      @favorite_buyers = Buyer.where(id: @favorite_buyer_ids)
    end
  end

  def create
    favorite = current_user.favorites.build(buyer_id: params[:buyer_id],user_id: params[:user_id])
    favorite.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    favorite = Favorite.find_by(buyer_id: params[:buyer_id],user_id: params[:user_id])
    favorite.destroy
    respond_to do |format|
      format.js
    end
  end
  
end
