class TripPolicy < ApplicationPolicy
  def invite?
    record.user == user
  end
end
