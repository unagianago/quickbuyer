class DealersController < ApplicationController
  before_action :move_to_index, except: [:index, :search]

  def index
    @buyers = Buyer.all
  end

  def search
    @buyers = Buyer.where(name: params[:name],category_id: params[:category_id])
  end

  private

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
