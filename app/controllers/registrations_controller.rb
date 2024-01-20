class RegistrationsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]
  before_action :redirect_if_authenticated, only: [:new, :create]

  def new
    @form = Registration::UserForm.new
  end

  def create
    @form = Registration::UserForm.new(form_params)

    if @form.save
      session[:user_id] = @form.user.id
      Current.user = @form.user
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def form_params
    params.require(:registration_user_form).permit(:email, :username, :password)
  end
end
