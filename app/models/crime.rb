class Crime < ApplicationRecord
  belongs_to :locality
  belongs_to :crime_reporter
  validates :description, presence: true, length: {minimum: 10}
  enum :priority, [ :low, :medium, :high ]
  validates :priority, inclusion: {in: priorities}
  validates :resolved, inclusion: { in: [true, false] }
end
