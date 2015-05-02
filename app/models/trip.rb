class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :places
  has_many :memberships
  has_many :users, through: :memberships

  geocoded_by :address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  alias_method :owner, :user
  alias_method :owner=, :user=

  alias_method :members, :users
  alias_method :members=, :users=
end
