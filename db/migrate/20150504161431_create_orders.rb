class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id , null: false
      t.integer :payment_method_id, null: false
      t.float :price, null: false
      t.integer :count, null: false
      t.datetime :order_date, null: false
      t.datetime :target_date, null: false
      t.text :status, null: false

      t.timestamps null: false
    end
    add_foreign_key :orders, :users, name: :user_id
    add_foreign_key :orders, :payment_methods, name: :payment_method_id
  end
end
