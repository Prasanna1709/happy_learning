class Department < ActiveRecord::Base
  has_many :students
  accepts_nested_attributes_for :students
  validates :department_name, :dept_unique_id, presence: true
end
