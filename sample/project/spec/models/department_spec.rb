require 'rails_helper'

RSpec.describe Department, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:department_name) }
    it { is_expected.to validate_presence_of :dept_unique_id }
  end
  describe 'associations' do
   it { should have_many(:students) }
  end
end

