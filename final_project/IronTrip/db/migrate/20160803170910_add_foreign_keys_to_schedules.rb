class AddForeignKeysToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_reference :schedules, :trip_planner
    add_reference :schedules, :venue
    add_reference :schedules, :event
  end
end
