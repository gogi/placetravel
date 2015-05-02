class ChangeUrlToAddressInPlaces < ActiveRecord::Migration
  def change
    rename_column :places, :url, :address
  end
end
