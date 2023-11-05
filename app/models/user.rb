class User < ApplicationRecord
  has_secure_password

  validates :email, :username, :password, presence: true
  validates :email, uniqueness: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP
end
