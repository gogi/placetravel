class RemoveLatitudeFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :latitude, :float
  end
end
