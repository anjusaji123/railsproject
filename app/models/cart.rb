class Cart < ApplicationRecord
  has_many :cartproducts
  has_many :products ,through: :cartproducts
end
