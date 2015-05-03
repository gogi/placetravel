class MembershipPolicy < ApplicationPolicy
  def confirm?
    record.user == user && !record.active?
  end
end