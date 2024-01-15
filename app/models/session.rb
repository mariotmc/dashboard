class Session
  include ActiveModel::Model
  attr_accessor :email, :password

  validates :email, :password, presence: true
  validate :validate_login

  def user
    @user ||= User.find_by(email: email)
  end

  private
    def validate_login
      return if password.blank? || user.present?

      errors.add(:session, "is incorrect")
    end
end
