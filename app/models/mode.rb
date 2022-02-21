class Mode < ApplicationRecord
  has_many :dreams
  validates :name, presence: true
end
