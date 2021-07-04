require 'rails_helper'

RSpec.describe Coat, type: :model do
  before do
    @coat = FactoryBot.build(:coat)
  end
  describe '新規投稿する' do
    context '投稿できる場合' do
      it '全て適切に入力すれば投稿できる' do
        expect(@coat).to be_valid
      end
      it 'セレクター項目で、id１以外を選択すれば投稿できる' do
        @coat.prefecture_id = 2
        @coat.start_time_id = 3
        @coat.finish_time_id = 4
        @coat.number_id = 5
        expect(@coat).to be_valid
      end  


    end
    context '新規投稿できない場合'
      it 'imageがなければ投稿出来ない' do
        @coat.image = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが無ければ投稿出来ない' do
        @coat.name = ''
        @coat.valid?
        expect(@coat.errors.full_messages).to include("Name can't be blank")
      end
      it 'infoがなければ投稿出来ない' do
        @coat.info = ''
        @coat.valid?
        expect(@coat.errors.full_messages).to include("Info can't be blank")
      end
      it 'prefectureがなければ投稿出来ない' do
        @coat.prefecture_id = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Prefectuer のセレクタから選択して下さい')
      end
      it 'prefectureのid1が選択されると投稿出来ない' do
        @coat.prefecture_id = 1
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Prefecture のセレクタから選択して下さい')
      end
      it 'cityがなければ投稿出来ない' do
        @coat.city = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include("City can't be blank")
      end
      it 'addressがなければ投稿出来ない' do
        @coat.address = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include("Address can't be blank")
      end
      it 'start_timeがなければ投稿出来ない' do
        @coat.start_time_id = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Start time のセレクタから選択して下さい')
      end
      it 'start_timeのid1が選択されると投稿出来ない' do
        @coat.start_time_id = 1
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Start time のセレクタから選択して下さい')
      end
      it 'finish_timeがなければ投稿出来ない' do
        @coat.finish_time_id = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Finish time のセレクタから選択して下さい')
      end
      it 'finish_timeのid1が選択されると投稿出来ない' do
        @coat.finish_time_id = 1
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Finish time のセレクタから選択して下さい')
      end
      it 'numberがなければ投稿出来ない' do
        @coat.number_id = nil
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Number のセレクタから選択して下さい')
      end
      it 'numberのid1が選択されると投稿出来ない' do
        @coat.number_id = 1
        @coat.valid?
        expect(@coat.errors.full_messages).to include('Number のセレクタから選択して下さい')
      end
 
    end
  end      
end
