class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :places
  has_many :memberships
  has_many :users, through: :memberships

  alias_method :owner, :user
  alias_method :owner=, :user=

  def membership(user)
    Membership.find_by(user: user, trip: self)
  end

  def members
    memberships.where(active: true).map(&:user)
  end
end
