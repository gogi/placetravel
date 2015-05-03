class MembershipsController < ApplicationController
  def confirm
    membership = Membership.find(params[:id])
    authorize membership
    membership.update(active: true)
    redirect_to membership.trip
  end
end