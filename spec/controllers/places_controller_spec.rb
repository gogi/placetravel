require 'rails_helper'

describe PlacesController do

  context 'logged user' do
    login_user
    let(:trip) { create(:trip) }

    describe 'GET #show' do
      it 'it renders the :show template' do
        place = create(:place, trip: trip)
        get :show, trip_id: trip.id, id: place.id
        expect(response).to render_template :show
      end

      it 'exposes place' do
        place = create(:place, trip: trip)
        get :show, trip_id: trip.id, id: place.id
        expect(controller.place).to eq place
      end
    end

    describe 'GET #index' do
      it 'it renders the :index template' do
        get :index, trip_id: trip.id
        expect(response).to render_template :index
      end
    end

    describe 'GET #new' do
      it 'renders the :new template' do
        get :new, trip_id: trip.id
        expect(response).to render_template :new
      end
      it 'exposes place' do
        place = create(:place, trip: trip)
        get :new, trip_id: trip.id, id: place.id
        expect(controller.place).to eq place
      end
    end

    describe 'GET #edit' do
      it 'renders the :edit template' do
        place = create(:place, trip: trip)
        get :edit, trip_id: trip.id, id: place.id
        expect(response).to render_template :edit
      end
      it 'exposes place' do
        place = create(:place, trip: trip)
        get :edit, trip_id: trip.id, id: place.id
        expect(controller.place).to eq place
      end
    end
  end

  context 'not logged user' do
    let(:trip) { create(:trip) }

    describe '#GET show' do
      let!(:place) { create(:place, trip: trip) }
      it 'not render :show template' do
        get :show, trip_id: trip.id, id: place.id
        expect(response).not_to render_template :show
      end
    end

    describe '#GET index' do
      it 'not render :index template' do
        get :index, trip_id: trip.id
        expect(response).not_to render_template :index
      end
    end

    describe '#GET new' do
      it 'not render :new template' do
        get :new, trip_id: trip.id
        expect(response).not_to render_template :new
      end
    end

    describe '#GET edit' do
      let!(:place) { create(:place, trip: trip) }
      it 'not render :edit template' do
        get :edit, trip_id: trip.id, id: place.id
        expect(response).not_to render_template :edit
      end
    end
  end
end
