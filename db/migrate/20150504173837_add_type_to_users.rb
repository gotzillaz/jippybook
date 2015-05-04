class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :text ,{null: false, default: "user"}
  end
end
