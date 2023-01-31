class City < ApplicationRecord
  has_many :localities
  has_many :crimes, through :localities
  validates :city, presence: true
end
