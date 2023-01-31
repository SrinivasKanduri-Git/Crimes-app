class City < ApplicationRecord
  has_many :localities
  validates :city, presence: true
end
