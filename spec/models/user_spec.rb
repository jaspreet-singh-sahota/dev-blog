require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it { should validate_length_of(:name).is_at_least(3) }
    it { should validate_length_of(:name).is_at_most(25) }
    it {
      should validate_length_of(:name).is_at_least(3)
        .with_short_message('is too short (minimum is 3 characters)')
    }
    it {
      should validate_length_of(:name).is_at_most(25)
        .with_short_message('is too long (maximum is 25 characters)')
    }
  end

  describe 'associations' do
    it { should have_many(:articles).dependent(:destroy) }
    it { should have_many(:votes) }
  end
end
