class AddActiveToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :active, :boolean
  end
end
