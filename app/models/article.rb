class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimun: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 5000 }
end
