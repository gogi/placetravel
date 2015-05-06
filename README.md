Project: Placetravel
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

General info
-----------

This app was created to help organize travel.

User can create a trip and invite people via e-mail to join it. All members have ability to add (interesting) places to the trip- with price, address and description. All places are displayed on the map (whith description after clicking on the marker).

Features
-------------
#### Done

* Register with confirmation email
* Invite new members via email
* Join Trip after receiving and accepting invitation email
* List all member's Trips
* List all places in Trip
* Create places inside the Trip
* Edit / delete / update Trip (only by creator)
* Edit / delete / update place (only by creator)
* Display map for Trip under list of all places
* Mark all places on map
* Show place description after clicking on marker on the map
* Authorise user
* Show how many places is in Trip
* Show number of Trip's members

#### To do

* Test with Rspec
* Email to members with information about new place
* Cancel invitation
* User Avatar
* Page About
* User's profile

Technologies used
---------------

* Ruby on Rails 4.2.0
* Ruby 2.2.0
* Postgresql
* HAML
* Bootstrap 3
* Devise authentication
* Pundit authorization
* Google Maps API
* Gem 'Gon'
* Gem 'Geocoder'

Notes
-------------------------
Please follow Ruby style guide available [here](https://github.com/bbatsov/ruby-style-guide).

Contributing
-------------
If you make improvements to this application, please share with others.

* Fork the project on GitHub.
* Make your feature addition or bug fix.
* Commit with Git.
* Send the author a pull request.

If you add functionality to this application, create an alternative
implementation, or build an application that is similar, please contact
me and I’ll add a note to the README so that others can find your work.

License
-------
MIT (in LICENCE file)
Author
-------
Malgorzata Grobelska
