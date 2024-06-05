class DealersController < ApplicationController
  before_action :move_to_index, except: [:index, :search]

  def index
    @buyers = Buyer.all
  end

  def search
    @buyers = Buyer.all

    if params[:name].present?
      @buyers = @buyers.select { |buyer| buyer.name.include?(params[:name]) }
      if @buyer == ""
        render 'index'
      end
    end
  
    if params[:category_id] != "1"
      @buyers = @buyers.select { |buyer| buyer.category_id == params[:category_id].to_i }
    end
  
    render 'index'

  end

  private

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
