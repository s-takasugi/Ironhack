class CreateTripPlanners < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_planners do |t|

      t.timestamps
    end
  end
end
