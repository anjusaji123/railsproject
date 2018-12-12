class User < ApplicationRecord

  # validates :name, :email, :password,:phonenumber, :presence => true
   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  # validates :phonenumber, numericality: { only_integer: true }
end
