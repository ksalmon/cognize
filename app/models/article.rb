class Article < ApplicationRecord
  validates :headline, presence: true
  validates :url, presence: true
end