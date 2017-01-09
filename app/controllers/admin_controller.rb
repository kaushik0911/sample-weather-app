class AdminController < ApplicationController
	# check logged user is an admin
  before_action :check_admin

  # list of all users
  def index
    @users = User.all
  end

  def user
  end
end
