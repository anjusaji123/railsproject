

class Product < ApplicationRecord
  # has_many :orderedproducts
  # has_many :orders, through: :orderedproducts
  has_many :cartproducts
  has_many :carts ,through: :cartproducts
#
end
