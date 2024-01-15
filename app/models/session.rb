class Session
  include ActiveModel::Model
  attr_accessor :email, :password

  validates :email, :password, presence: true
  validate :validate_login

  def user
    @user ||= User.authenticate_by(email: email, password: password)
  end

  private
    def validate_login
      return if password.blank? || user.present?

      errors.add(:base, "Email/Password combination is incorrect")
    end
end
