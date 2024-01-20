class ApplicationController < ActionController::Base
  include Authentication
  include SetCurrentRequestDetails

  def authenticate_user
    redirect_to new_session_path if session[:user_id].nil?
  end

  def redirect_if_authenticated
    redirect_to root_path if session[:user_id]
  end
end
