class AddFirstnameAndLastnameToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :firstname, :text, {null: false, default: ""}
    add_column :addresses, :lastname, :text, {null: false, default: ""}
    remove_column :users, :firstname
    remove_column :users, :lastname
  end
end
