class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :roll_number, :integer
    add_column :students, :dob, :date
    add_column :students, :contact, :string
  end
end
