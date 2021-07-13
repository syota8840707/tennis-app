class Message < ApplicationRecord
  belongs_to :user
  belongs_to :coat, dependent: :destroy

  validates :message, presence: true
  validates :user, presence: true
  validates :coat, presence: true
end
