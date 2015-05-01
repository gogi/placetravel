class AddLongitudeToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :longitude, :float
  end
end
