class AdminController < ApplicationController
  # check logged user is an admin
  before_action :check_admin, :flash_remove

  # list of all users
  def index
    @users = User.all
  end
end
