class Locality < ApplicationRecord
  belongs_to :city
  has_many :crimes
  validates :locality, presence: true
end
