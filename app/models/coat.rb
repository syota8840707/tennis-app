class Coat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :start_time
  belongs_to_active_hash :finish_time
  belongs_to_active_hash :number

  belongs_to :user
  has_one_attached :image
  has_many :messages, dependent: :destroy

  with_options presence: true do
    validates :name, :info, :image, :city, :address, :user_id
    validates :prefecture_id, :start_time_id, :finish_time_id,
              :number_id, numericality: { other_than: 1, message: 'のセレクタから選択して下さい' }
  end
end
