class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, :image, :categories, presence: true
  validates :title, presence: true, length: { minimun: 3, maximum: 100 }
  validates :text, presence: true, length: { minimum: 10, maximum: 5000 }
  has_many :votes
  has_many :voters , throught: :votes
  has_many :users_vote, through: :votes, source: :user
  scope :highest_vote, -> { order(votes_count: :desc) }
end
