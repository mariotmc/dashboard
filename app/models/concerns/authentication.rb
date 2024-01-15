module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  private
    def authenticate
      if authenticated_user = User.find(session[:user_id])
        Current.user = authenticated_user
      else
        redirect_to new_session_path
      end
    end
end
