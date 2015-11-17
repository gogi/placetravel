require 'rails_helper'

describe TripsController do
  let(:trip) { create(:trip) }

  context 'logged user' do
    login_user

    describe '#GET new' do
      it 'renders :new template' do
        get :new, id: trip.id
        expect(response).to render_template :new
      end
    end

    describe '#GET index' do
      it 'renders :index template' do
        get :index, id: trip.id
        expect(response).to render_template :index
      end
    end

    describe '#GET edit' do
      it 'renders :edit template' do
        get :edit, id: trip.id
        expect(response).to render_template :edit
      end
    end
  end
end
