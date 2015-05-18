require 'rails_helper'

RSpec.describe Trip, type: :model do
  
  let(:user1) { create(:user, email: 'user@wp.pl') }
  let(:user2) { create(:user, email: 'user2@wp.pl') }
  let(:user3) { create(:user, email: 'user3@wp.pl') }
  let(:trip) { create(:trip, users: [user1, user2]) }

  it 'finds user who is a member of a trip' do
    membership = trip.membership(user1)
    expect(membership.user).to eq user1
  end

  it 'is nil for user not assigned to trip' do
    membership = trip.membership(user3)
    expect(membership).to eq nil
  end
end
