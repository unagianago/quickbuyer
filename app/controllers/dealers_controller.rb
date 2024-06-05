class DealersController < ApplicationController
  before_action :move_to_index, except: [:index, :search]

  def index
    @buyers = Buyer.all
  end

  def search
    @q = Buyer.ransack(params[:q])
    @buyers = @q.result
  end

  private

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
