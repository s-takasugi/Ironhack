class Schedule < ApplicationRecord
  belongs_to :trip_planners
  belongs_to :venues
  belongs_to :events
end
