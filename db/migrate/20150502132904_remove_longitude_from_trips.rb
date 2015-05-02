class RemoveLongitudeFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :longitude, :float
  end
end
