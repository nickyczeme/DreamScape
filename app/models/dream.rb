class Dream < ApplicationRecord
  belongs_to :user
  # Dream.fist.user
  belongs_to :mode
  # Dream.fist.mode
  has_many :bookings, dependent: :destroy
  # Dream.first.bookings
  has_many :users, through: :bookings
  # Dream.first.users
  validates :title, :description, :intensity, :price, presence: true
  validates :intensity, inclusion: { in: [0, 1, 2, 3, 4, 5] }, allow_nil: false
  validates :price, numericality: { only_float: true }
  validates :price, numericality: { only_float: true }, inclusion: { in: 0..10 }
  has_one_attached :photo
end
