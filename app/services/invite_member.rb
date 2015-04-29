class InviteMember
  attr_reader :email, :name, :trip_id

  def initialize(email, name, trip_id)
    @email = email
    @name = name
    @trip_id = trip_id
  end

  def call
    trip = Trip.find(@trip_id)
    user = User.invite!(name: @name, email: @email)
    Membership.create(trip: trip, user: user)
  end
end