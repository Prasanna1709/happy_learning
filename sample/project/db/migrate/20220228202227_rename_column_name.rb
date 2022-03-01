class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column :departments, :department_id, :dept_unique_id
  end
end
