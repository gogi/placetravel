class MembershipsController < ApplicationController
  def confirm
    membership.active = true
  end
end