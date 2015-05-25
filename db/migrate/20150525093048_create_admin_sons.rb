class CreateAdminSons < ActiveRecord::Migration
  def change
    create_table :admin_sons do |t|
      t.string :name
      t.references :admin_father, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
