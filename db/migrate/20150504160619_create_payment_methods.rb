class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.text :name , null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
