class AddDepartmentToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :department, index: true, foreign_key: true
  end
end
