class MembershipPolicy < ApplicationPolicy
  def confirm?
    record.user == user
  end
end