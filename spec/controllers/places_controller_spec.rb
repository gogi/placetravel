require 'rails_helper'

describe PlacesController do
  
  describe 'GET #show' do
    login_user

    it 'it renders the :show template' do
      trip = create(:trip)
      place = create(:place, trip: trip)
      get :show, trip_id: trip.id, id: place.id
      expect(response).to render_template :show
    end

    # it 'assigns new place to @place' do
    #   place = create(:place)
    #   get :show, id: place
    #   expect(assigns(:place)).to eq place
    # end
  end
end
