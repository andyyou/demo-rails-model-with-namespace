class Change < ActiveRecord::Migration
  def change
    rename_column :admin_sons, :admin_father_id, :father_id
  end
end
