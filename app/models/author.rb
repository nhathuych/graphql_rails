class Author < ApplicationRecord
  has_many :articles

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
