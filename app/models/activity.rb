class Activity < ApplicationRecord
  belongs_to :category

  validates :description, presence: true, length: {maximum: 1000}
  validates :name, presence: true
end
