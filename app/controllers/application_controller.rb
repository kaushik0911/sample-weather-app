class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # handle AuthenticityToken
  protect_from_forgery with: :null_session, \
  only: proc { |c| c.request.format.json? }

  # action, to check if the current logged user role is admin
  # if not redirect to user's 'index'
  def check_admin
    redirect_to user_root_path unless current_user[:role] == 'admin'
  end
end
