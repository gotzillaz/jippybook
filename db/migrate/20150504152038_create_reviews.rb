class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
    add_foreign_key :reviews, :books, name: :book_id
    add_foreign_key :reviews, :users, name: :user_id
  end
end
