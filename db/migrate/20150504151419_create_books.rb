class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :category_id, null: false
      t.text :name, null: false
      t.text :description, null: false
      t.binary :img, null: false
      t.float :price, null: false

      t.timestamps null: false
    end
    add_foreign_key :books, :categories, name: :category_id
  end
end
