describe User do

  it {should have_many(:memberships)}
  it {should have_many(:trips).through(:memberships)}

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  
  before(:each) { @user = User.new(email: 'user@example.com', name: 'John') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it '#to_s returns a name' do
    expect(@user.to_s).to eq 'John'
  end

end
