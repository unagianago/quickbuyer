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
  
    if params[:category_id] != nil
      category_ids = params[:category_id]
      @buyers = @buyers.select { |buyer| category_ids.include?(buyer.category_id.to_s) }
    end
  
    render 'index'

  end

  private

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
