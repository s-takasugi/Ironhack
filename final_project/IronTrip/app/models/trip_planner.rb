class TripPlanner < ApplicationRecord
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :events
  has_many :schedules
  has_many :venues, through: :schedules
  has_many :events, through: :schedules
end
