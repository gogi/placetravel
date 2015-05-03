class InviteMailer < ApplicationMailer
  def invite_to_trip(membership)
    @trip = membership.trip
    @user = membership.user
    mail(to: @user.email, subject: 'Invitation to a trip!')
  end
end
