class RemoveStatusFromMemberships < ActiveRecord::Migration
  def change
    remove_column :memberships, :status, :string
  end
end
