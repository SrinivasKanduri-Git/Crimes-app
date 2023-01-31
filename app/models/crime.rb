class Crime < ApplicationRecord
  belongs_to :locality
  belongs_to :crime_reporter
  validates :description, presence: true, length: {minimum: 10}
  enum priority: {low: 0, medium: 1, high: 2}
  validates :priority, inclusion: {in: priorities.keys}
  validates :resolved, inclusion: { in: [true, false] }
end
