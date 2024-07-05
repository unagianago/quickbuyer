class DealersController < ApplicationController
  before_action :move_to_index, except: [:index, :search]

  def index
    @buyers = Buyer.all
  end

  def search
    @buyers = Buyer.all

    if params[:name].present?
      names = params[:name].squish.split(' ')
      @buyers = @buyers.select { |buyer| names.any? { |name| buyer.name.include?(name) } }
      render 'index' if @buyer == ''
    end

    if !params[:category_id].blank? || !params[:procedure_id].blank?
      @category_ids = Array(params[:category_id])
      @procedure_ids = Array(params[:procedure_id])
      @buyers = @buyers.select do |buyer|
        category_match = if buyer.category_id.is_a?(Array)
                           (buyer.category_id.map(&:to_s) & @category_ids) == @category_ids
                         else
                           @category_ids.include?(buyer.category_id.to_s) unless @category_ids.length > 1
                         end

        procedure_match = if buyer.procedure_id.is_a?(Array)
                            (buyer.procedure_id.map(&:to_s) & @procedure_ids) == @procedure_ids
                          else
                            @procedure_ids.include?(buyer.procedure_id.to_s) unless @procedure_ids.length > 1
                          end

        if params[:category_id].present? && params[:procedure_id].present?
          category_match && procedure_match
        elsif params[:category_id].present?
          category_match
        elsif params[:procedure_id].present?
          procedure_match
        else
          true
        end
      end
    end

    render 'index'
  end

  private

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
