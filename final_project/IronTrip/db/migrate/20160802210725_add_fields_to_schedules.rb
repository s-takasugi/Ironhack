class AddFieldsToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :day, :integer
    add_column :schedules, :time, :integer
  end
end
