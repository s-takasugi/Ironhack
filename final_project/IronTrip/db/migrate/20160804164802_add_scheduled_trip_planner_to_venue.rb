class AddScheduledTripPlannerToVenue < ActiveRecord::Migration[5.0]
  def change
    add_reference :venues, :scheduled_trip_planner, foreign_key: true
  end
end
