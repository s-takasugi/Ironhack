class CreateTripPlannersVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_planners_venues
    add_reference :trip_planners_venues, :trip_planner
    add_reference :trip_planners_venues, :venue

  end
end
