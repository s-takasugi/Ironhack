class TripPlanner < ApplicationRecord
  has_and_belongs_to_many :venues
  has_and_belongs_to_many :events
  has_many :schedules
  has_many :scheduled_venues, through: :schedules, source: :venue
  has_many :scheduled_events, through: :schedules, source: :event

end
