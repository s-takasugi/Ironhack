class Schedule < ApplicationRecord
  belongs_to :trip_planner
  belongs_to :venue
  belongs_to :event
end
