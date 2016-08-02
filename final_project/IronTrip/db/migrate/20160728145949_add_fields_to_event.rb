class AddFieldsToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :title, :string
    add_column :events, :location, :string
    add_column :events, :date, :string
    add_column :events, :image, :string
  end
end
