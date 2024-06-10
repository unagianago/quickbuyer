class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_buyer, only: [:create, :destroy]

  def index
    if current_user.id != params[:user_id].to_i
      redirect_to root_path
    else
      @favorite_buyer_ids = current_user.favorites.pluck(:buyer_id)
      @favorite_buyers = Buyer.where(id: @favorite_buyer_ids)
    end
  end

  def create
    favorite = Favorite.new(favorite_params)
    favorite.save
    render partial: 'dealers/favorite', locals: { buyer: @buyer }
  end

  def destroy
    favorite = Favorite.find_by(buyer_id: params[:buyer_id], user_id: params[:user_id])
    favorite.destroy
    render partial: 'dealers/favorite', locals: { buyer: @buyer }
  end

  private

  def favorite_params
    params.require(:favorite).permit(:buyer_id).merge(user_id: current_user.id)
  end

  def set_buyer
    @buyer = Buyer.find_by(id: params[:buyer_id])
  end
end
