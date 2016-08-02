class AddStartDateToTripPlanner < ActiveRecord::Migration[5.0]
  def change
    add_column :trip_planners, :start_date, :date
  end
end
