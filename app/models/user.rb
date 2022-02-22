class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :dreams
  # User.first.dreams
  # dreams that user created
  has_many :bookings
  has_many :booked_dreams, through: :bookings, source: :dream
  # User.first.booked_dreams
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
