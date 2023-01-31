class Crime < ApplicationRecord
  belongs_to :locality
  belongs_to :city, through :locality
  belongs_to :crime_reporter
  validates :description, presence: true, length: {minimum: 10}
  validates :priority, presence: true
  validates :resolved, presence: true
end
