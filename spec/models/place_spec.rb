require 'rails_helper'

RSpec.describe Place, type: :model do
  it { should belong_to(:user) }
end
