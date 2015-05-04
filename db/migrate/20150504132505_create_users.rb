class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :firstname, null:false
      t.string :lastname, null:false
      t.string :email, null:false

      t.timestamps null: false
    end
  end
end
