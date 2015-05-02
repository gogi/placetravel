# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

# Trips
london = Trip.find_or_create_by(
  name: 'London',
  address: 'London, United Kingdom',
  description: 'Trip to London',
  user: user
)
edinburgh = Trip.find_or_create_by(
  name: 'Edinburgh',
  address: 'Edinburgh, United Kingdom',
  description: 'Trip to Edinburgh',
  user: user
)
Trip.find_or_create_by(
  name: 'Krk',
  address: 'Krk, Croatia',
  description: 'Trip to Krk',
  user: user
)

# Places
Place.find_or_create_by(
  name: 'Tower of London',
  address: 'Tower of London, London, United Kingdom',
  description: 'Place Tower of London',
  price: 13,
  trip: london,
  user: user
)
Place.find_or_create_by(
  name: 'British Museum',
  address: 'British Museum, Great Russell Street, London, United Kingdom',
  description: 'Place British Museum',
  price: 0,
  trip: london,
  user: user
)
Place.find_or_create_by(
  name: 'Victoria and Albert Museum',
  address: 'Victoria and Albert Museum, London, United Kingdom',
  description: 'Place Victoria and Albert Museum',
  price: 0,
  trip: london,
  user: user
)
Place.find_or_create_by(
  name: "Arthur's Seat",
  address: "Arthur's Seat, Edinburgh, United Kingdom",
  description: "Place Arthur's Seat",
  price: 0,
  trip: edinburgh,
  user: user
)
