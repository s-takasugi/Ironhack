class AddApiIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :api_id, :string
  end
end
