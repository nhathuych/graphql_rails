class Article < ApplicationRecord
  belongs_to :author

  validates :title, :body, presence: true
end
