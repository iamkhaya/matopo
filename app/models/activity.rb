class Activity < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :offerings, dependent: :delete_all

  validates :description, presence: true, length: {maximum: 1000}
  validates :name, presence: true
  validates :categories, presence: true
end
