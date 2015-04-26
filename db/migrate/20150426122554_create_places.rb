class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.belongs_to :user, index: true
      t.belongs_to :trip, index: true
      t.string :url
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
    add_foreign_key :places, :users
    add_foreign_key :places, :trips
  end
end
