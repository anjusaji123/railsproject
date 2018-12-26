class AddOrderedToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :ordered, :boolean
  end
end
