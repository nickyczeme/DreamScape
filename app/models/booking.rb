class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dream
  validates :starting_date, :ending_date, presence:true
  validate :check_if_user_is_owner

  def check_if_user_is_owner
    errors.add(:booking, "cannot booked something that user has created") if dream.user == user
  end
end
