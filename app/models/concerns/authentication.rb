module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  private
    def authenticate
      if session[:user_id] && authenticated_user = User.find(session[:user_id])
        Current.user = authenticated_user
      else
        redirect_to new_sessions_path
      end
    end
end
