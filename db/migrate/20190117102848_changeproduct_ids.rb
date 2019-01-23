class ChangeproductIds < ActiveRecord::Migration[5.2]
  def change
    rename_column :carts, :product_ids, :product_id
  end
end
