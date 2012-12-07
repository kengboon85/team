class OrganizationController < ApplicationController
  def index
	@users = User.all
  end
end
