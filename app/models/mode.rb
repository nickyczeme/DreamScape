class Mode < ApplicationRecord
  has_many :dreams, dependent: :destroy
  validates :name, presence: true
end
