require 'rails_helper'

describe PlacesController do
  
  describe 'GET #show' do
    context 'logged user' do
      login_user

      describe 'GET #show' do
        it 'it renders the :show template' do
          trip = create(:trip)
          place = create(:place, trip: trip)
          get :show, trip_id: trip.id, id: place.id
          expect(response).to render_template :show
        end

        it 'exposes place' do
          trip = create(:trip)
          place = create(:place, trip: trip)
          get :show, trip_id: trip.id, id: place.id
          expect(controller.place).to eq place
        end
      end

      describe 'GET #index' do
        it 'it renders the :index template' do
          trip = create(:trip)
          get :index, trip_id: trip.id
          expect(response).to render_template :index
        end
      end

      describe 'GET #new' do
        it 'renders the :new template' do
          trip = create(:trip)
          get :new, trip_id: trip.id
          expect(response).to render_template :new
        end
        it 'exposes place' do
          trip = create(:trip)
          place = create(:place, trip: trip)
          get :new, trip_id: trip.id, id: place.id
          expect(controller.place).to eq place
        end
      end

      describe 'GET #edit' do
        it 'renders the :edit template' do
          trip = create(:trip)
          place = create(:place, trip: trip)
          get :edit, trip_id: trip.id, id: place.id
          expect(response).to render_template :edit
        end
        it 'exposes place' do
          trip = create(:trip)
          place = create(:place, trip: trip)
          get :edit, trip_id: trip.id, id: place.id
          expect(controller.place).to eq place
        end
      end
    end

    context 'not logged user' do

    end
  end
end
