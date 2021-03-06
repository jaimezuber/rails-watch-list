class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, length: { minimum: 1 }
  validates :overview, presence: true

  has_many :bookmarks
end
