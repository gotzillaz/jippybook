class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :address, null: false
      t.text :district, null: false
      t.text :province, null: false
      t.text :zipcode, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_foreign_key :addresses, :users, name: :user_id
  end
end
