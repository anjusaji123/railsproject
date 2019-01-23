class AddImageurlToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :imageurl, :string
  end
end
