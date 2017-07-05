class User < ApplicationRecord
  PARAMS_SIGNUP = [:mail_address, :password, :password_confirmation]
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :mail_address, format: {with: EMAIL_REGEX}, uniqueness: true, presence: true
  validates :password, presence: true, length: {minimum: 6, maximum: 20}

  has_secure_password
end
