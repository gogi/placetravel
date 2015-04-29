class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :places
  has_many :memberships
  has_many :users, through: :memberships

  alias_method :owner, :user
  alias_method :owner=, :user=

  alias_method :members, :users
  alias_method :members=, :users=
end
