class Venue < ApplicationRecord
  has_and_belongs_to_many :trip_planners
end
