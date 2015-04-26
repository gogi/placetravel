class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :places
  has_many :memberships
  has_many :users, through: :memberships
end
