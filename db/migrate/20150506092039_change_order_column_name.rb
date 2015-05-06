class ChangeOrderColumnName < ActiveRecord::Migration
  def change
    rename_column :orders, :target_date, :send_date
    add_column :orders, :address_id, :integer ,{null: false, default: 0}
  end
end
