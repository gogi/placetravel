require 'rails_helper'

describe TripDecorator do
  subject(:trip) { create(:trip, date: 'Mon, 18 May 2015').decorate }
  let(:user) { create(:user) }

  describe 'TripDecorator decorates trip date' do
    it 'changes display of trip date' do
      expect(trip.trip_date).to eq "Monday 18, May 2015"
    end
  end

  describe 'TripDecorator decorates word places regarding to number of places' do
    context 'trip has no places' do
      it "display 'No places'" do
        expect(trip.places_display).to eq "No places"
      end
    end

    context 'trip has one place' do
      let!(:place1) { create(:place, trip: trip, user: user) }
      it "display 'Place'" do
        expect(trip.places_display).to eq "Place"
      end
    end

    context 'trip has more than one places' do
      let!(:place1) { create(:place, trip: trip, user: user) }
      let!(:place2) { create(:place, trip: trip, user: user) }
      it "display 'Places'" do
        expect(trip.places_display).to eq "Places"
      end
    end
  end
end
