class ChangeDataTypeForNames < ActiveRecord::Migration
  def change
    change_table :books do |b|
      b.change :img, :text
    end
  end
end
