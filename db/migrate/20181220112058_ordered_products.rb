class OrderedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :orderedproducts do |t|
    t.integer :products_id
    t.integer :order_id
   end
  end
end
