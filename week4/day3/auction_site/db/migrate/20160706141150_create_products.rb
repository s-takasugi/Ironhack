class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :text
      t.string :deadline
      t.string :date

      t.timestamps
    end
  end
end
