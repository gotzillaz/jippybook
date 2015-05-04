class CreateCartUsers < ActiveRecord::Migration
  def change
    create_table :cart_users do |t|
      t.integer :user_id, null: false 
      t.integer :book_id, null: false

      t.timestamps null: false
    end
    add_foreign_key :cart_users, :users, name: :user_id
    add_foreign_key :cart_users, :books, name: :book_id
  end
end
