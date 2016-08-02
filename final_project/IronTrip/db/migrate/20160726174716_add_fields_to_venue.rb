class AddFieldsToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :name, :string
    add_column :venues, :address, :string
    add_column :venues, :category, :string
    add_column :venues, :image, :string  
  end
end
