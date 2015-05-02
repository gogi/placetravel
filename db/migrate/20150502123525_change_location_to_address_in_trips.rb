class ChangeLocationToAddressInTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :location, :address
  end
end
