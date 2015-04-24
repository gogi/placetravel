class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :date
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :trips, :users
  end
end
