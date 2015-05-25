class CreateAdminSons < ActiveRecord::Migration
  def change
    create_table :admin_sons do |t|
      t.string :name

      t.timestamps null: false
    end

    add_reference :admin_sons, :father, references: :admin_father, index: true
    add_foreign_key :admin_sons, :admin_fathers, column: :father_id
  end
end
