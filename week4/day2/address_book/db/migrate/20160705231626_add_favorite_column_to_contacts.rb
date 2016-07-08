class AddFavoriteColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :favorite, :boolean, default: false
  end
end
