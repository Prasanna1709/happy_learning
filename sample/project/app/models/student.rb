class Student < ActiveRecord::Base
  belongs_to :department
  accepts_nested_attributes_for :department

  validates :name, :email, :roll_number, presence: true
end
