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
        expect(@user.errors.full_messages).to include('ニックネームを入力してください')
      end
      it 'tennis_yearがないと登録できない' do
        @user.tennis_year = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('テニス歴を入力してください')
      end
      it 'tennis_year半角数字でないと登録できない' do
        @user.tennis_year = '３'
        @user.valid?
        expect(@user.errors.full_messages).to include('テニス歴は半角数字で記入して下さい')
      end
      it 'メールアドレスがないと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールを入力してください')
      end
      it 'メールアドレスが一意性でないと登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'メールアドレスは。＠を含まないと登録出来ない' do
        @user.email = 'takerugmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it 'パスワードがないと登録出来ない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'パスワードが数字のみでは登録出来ない' do
        @user.password = '00000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字で記入して下さい')
      end
      it 'パスワードが5文字以下だと登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'パスワードとパスワード（認証）は一致しないと登録できない' do
        @user.password = '1234567'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it 'パスワードは半角英数字混合でないと登録出来ない' do
        @user.password = 'xxxxxxxx'
        @user.password_confirmation = 'xxxxxxxx'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字で記入して下さい')
      end
      it 'パスワードは全角英数字混合では登録出来ない' do
        @user.password = 'AAAAAAAA０００'
        @user.password_confirmation = 'AAAAAAA０００'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字で記入して下さい')
      end
    end
  end
end
