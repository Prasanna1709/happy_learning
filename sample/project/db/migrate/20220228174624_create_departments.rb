class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :department_id
      t.string :department_name

      t.timestamps null: false
    end
  end
end
