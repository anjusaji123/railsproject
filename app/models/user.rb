class User < ApplicationRecord
  has_many :orders
  validates :name, :email, :password,:phonenumber, :presence => true
  validates :email, uniqueness: true
  validates :phonenumber, numericality: { only_integer: true }


end
