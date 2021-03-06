require 'rails_helper'

RSpec.describe Place, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:trip) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
end
