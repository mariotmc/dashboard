class User < ApplicationRecord
  has_secure_password

  has_many :tasks, dependent: :destroy

  validates :email, :username, :password, presence: true
  validates :email, uniqueness: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP
end
