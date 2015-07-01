class ChangePriceToDecimal < ActiveRecord::Migration
  def change
    change_column :places, :price, :decimal
  end
end
