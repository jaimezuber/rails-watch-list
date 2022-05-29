class List < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
end
