require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    user = FactoryBot.create(:user)
    @favorite = FactoryBot.build(:favorite, user_id: user.id)
  end

  describe 'お気に入り登録' do
    context 'お気に入り登録できる場合' do
      it 'user_idとbuyer_idが存在すれば登録できる' do
        expect(@favorite).to be_valid
      end
    end
    context 'お気に入り登録できない場合' do
      it 'user_idが空がでは登録できない' do
        @favorite.user = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include("User can't be blank")
      end

      it 'buyer_idが空がでは登録できない' do
        @favorite.buyer = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include("Buyer can't be blank")
      end

      it '重複したuser_idとbuyer_idでは登録できない' do
        @favorite.save
        another_favorite = FactoryBot.build(:favorite, user_id: @favorite.user_id, buyer_id: @favorite.buyer_id)
        another_favorite.valid?
        expect(another_favorite.errors.full_messages).to include('User has already been taken')
      end
    end
  end
end
