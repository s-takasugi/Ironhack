class AddApiIdToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :api_id, :string
  end
end
