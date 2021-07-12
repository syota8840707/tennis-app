class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coats
  has_many :messages

  with_options presence: true do
    validates :nickname
    validates :tennis_year, format: { with: /\A[0-9]+\z/i, message: 'は半角数字で記入して下さい' }
  end
  validates :password, :password_confirmation, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
end
