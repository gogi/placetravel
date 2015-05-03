class InviteMember
  attr_reader :email, :name, :trip_id

  def initialize(email, name, trip_id)
    @email = email
    @name = name
    @trip_id = trip_id
  end

  def call
    trip = Trip.find(@trip_id)
    user = fetch_user
    return if Membership.exists?(trip: trip, user: user)
    membership = Membership.create(trip: trip, user: user, active: false)
    InviteMailer.invite_to_trip(membership).deliver
  end

  private

  def fetch_user
    if User.exists?(email: @email)
      User.find_by(email: @email)
    else
      User.invite!(name: @name, email: @email)
    end
  end
end
