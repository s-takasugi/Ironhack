class Venue < ApplicationRecord
  has_and_belongs_to_many :trip_planners
  has_many :scheduled_trip_planners, through: :schedules, source: :trip_planners
  has_many :schedules
end
