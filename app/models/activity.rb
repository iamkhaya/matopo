class Activity < ApplicationRecord
  has_and_belongs_to_many :categories

  validates :description, presence: true, length: {maximum: 1000}
  validates :name, presence: true
  validates :categories, presence: true
end
