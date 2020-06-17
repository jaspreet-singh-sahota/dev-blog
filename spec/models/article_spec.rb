require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:article_categories) }
    it { should have_many(:categories).through(:article_categories) }
    it { should have_many(:votes) }
    it { should have_many(:users_vote).through(:votes) }
  end
  
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:categories) }
    it { should validate_presence_of(:text) }
    it { should validate_length_of(:title).is_at_least(3) }
    it { should validate_length_of(:title).is_at_most(30) }
    it { should validate_length_of(:text).is_at_least(10) }
    it { should validate_length_of(:text).is_at_most(5000) }
    it { 
          should validate_length_of(:title).is_at_least(3).
          with_short_message('is too short (minimum is 3 characters)') 
        }
    it { 
          should validate_length_of(:title).is_at_most(30).
          with_short_message('is too long (maximum is 30 characters)') 
        }
    it { 
          should validate_length_of(:text).is_at_least(10).
          with_short_message('is too short (minimum is 10 characters)') 
        }
    it { 
          should validate_length_of(:text).is_at_most(5000).
          with_short_message('is too long (maximum is 5000 characters)') 
        }
    it 'fails validation with no title expecting a specific message' do
      no_article_title = Article.new(title: '')
      no_article_title.valid?
      expect(no_article_title.errors[:title]).to include('can\'t be blank')
    end
  end
end
