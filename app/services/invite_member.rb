class InviteMember
  attr_reader :email, :name, :trip_id

  def initialize(email, name, trip_id)
    @email = email
    @name = name
    @trip_id = trip_id
  end

  def call
    trip = Trip.find(@trip_id)
    if User.exist?(email: @email)
      user = User.find_by(email: @email)
    else
      user = User.invite!(name: @name, email: @email)
    end
    unless Membership.exist?(trip: trip, user: user)
      Membership.create(trip: trip, user: user)
    end
  end
end