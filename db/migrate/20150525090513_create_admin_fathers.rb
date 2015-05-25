class CreateAdminFathers < ActiveRecord::Migration
  def change
    create_table :admin_fathers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
