class ApplicationController < ActionController::Base
  include Authentication
  include SetCurrentRequestDetails

  def authenticate_user
    redirect_to new_session_path if Current.user.nil?
  end

  def redirect_if_authenticated
    redirect_to root_path if Current.user.present?
  end
end
