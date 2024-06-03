require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'nicknameとemailとpasswordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        expect(@user).to be_valid
      end
      
      it 'emailが空では登録できない' do
        expect(@user).to be_valid
      end

      it '重複したemailが存在する場合は登録できない' do
        expect(@user).to be_valid
      end

      it 'emailは@を含まないと登録できない' do
        expect(@user).to be_valid
      end

      it 'passwordが空では登録できない' do
        expect(@user).to be_valid
      end

      it 'passwordが5文字以下では登録できない' do
        expect(@user).to be_valid
      end

      it 'passwordが129文字以上では登録できない' do
        expect(@user).to be_valid
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

    end

  end

end
