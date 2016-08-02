class CreateEventsTripPlanners < ActiveRecord::Migration[5.0]
  def change
    create_table :events_trip_planners
    add_reference :events_trip_planners, :trip_planner
    add_reference :events_trip_planners, :event
  end
end
