require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :roll_number }
  end

  describe 'associations' do
    it { should belong_to(:department) }
  end
end

