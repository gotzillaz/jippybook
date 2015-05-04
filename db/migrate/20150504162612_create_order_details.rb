class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :book_id, null: false

      t.timestamps null: false
    end
    add_foreign_key :order_details, :orders, name: :order_id
    add_foreign_key :order_details, :books, name: :book_id
  end
end
