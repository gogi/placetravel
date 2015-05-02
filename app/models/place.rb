class Place < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip

  geocoded_by :address
  after_validation :geocode
end
