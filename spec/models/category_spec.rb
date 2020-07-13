require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should have_many(:article_categories) }
    it { should have_many(:articles).through(:article_categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it { should validate_length_of(:name).is_at_least(2) }
    it { should validate_length_of(:name).is_at_most(25) }
    it {
      should validate_length_of(:name).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:name).is_at_most(25)
        .with_short_message('is too long (maximum is 25 characters)')
    }
  end
end
