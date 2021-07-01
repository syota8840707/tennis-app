require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe '新規登録ユーザー情報' do
    context '登録できる場合' do
      it '全て適切に入力すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが一緒で半角英数字の６文字以上で入力すれば登録できる' do
        @user.password = '000ddd'
        @user.password_confirmation = '000ddd'
        expect(@user).to be_valid
      end
    end
    context '登録できない場合' do
      it 'nicknameがないと登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'tennis_yearがないと登録できない' do
        @user.tennis_year = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Tennis year can't be blank")
      end
      it 'メールアドレスがないと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'メールアドレスが一意性でないと登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'メールアドレスは。＠を含まないと登録出来ない' do
        @user.email = 'takerugmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'パスワードがないと登録出来ない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'パスワードが数字のみでは登録出来ない' do
        @user.password = '00000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワードが5文字以下だと登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'パスワードとパスワード（認証）は一致しないと登録できない' do
        @user.password = '1234567'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'パスワードは半角英数字混合でないと登録出来ない' do
        @user.password = 'xxxxxxxx'
        @user.password_confirmation = 'xxxxxxxx'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワードは全角英数字混合では登録出来ない' do
        @user.password = 'AAAAAAAA０００'
        @user.password_confirmation = 'AAAAAAA０００'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
    end
  end
end
