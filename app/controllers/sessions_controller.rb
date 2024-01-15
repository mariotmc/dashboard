class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]
  before_action :redirect_if_authenticated, only: [:new, :create]

  def new
    @sesh = Session.new
  end

  def create
    sesh = Session.new(session_params)

    if sesh.valid?
      session[:user_id] = sesh.user.id
      Current.user = User.find(session[:user_id])
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    Current.user = nil
    redirect_to new_session_path
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
