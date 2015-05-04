class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id, null: false
      t.integer :order_id, null: false
      t.text :description, null: false
      t.binary :img, null: false

      t.timestamps null: false
    end
    add_foreign_key :payments, :users, name: :user_id
    add_foreign_key :payments, :orders, name: :order_id
  end
end
