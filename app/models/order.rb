class Order < ApplicationRecord

  belongs_to :user
  # has_many :orderedproducts
  # has_many :products ,through: :orderedproducts


end
