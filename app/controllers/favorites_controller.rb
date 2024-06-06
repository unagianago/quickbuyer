class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
    @favorite_buyers = @user.favorite_buyers
  end

  private

  def set_user
    @user = current_user
  end

end
