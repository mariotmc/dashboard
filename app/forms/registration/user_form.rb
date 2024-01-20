class Registration::UserForm
  include ActiveModel::Model

  attr_accessor :email, :username, :password, :user

  validates :email, :username, :password, presence: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP

  def save
    return false if invalid?

    User.create(email: email, username: username, password: password)
  end

  def user
    @user ||= User.find_by(email: email)
  end
end
