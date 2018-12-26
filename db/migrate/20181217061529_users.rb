class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :name
    t.string :email , unique: true
    t.string :password
    t.string :phonenumber
    t.timestamps
   end
  end
end
