class AddLatitudeToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :latitude, :float
  end
end
