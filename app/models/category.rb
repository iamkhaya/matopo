class Category < ApplicationRecord
  has_and_belongs_to_many :activities, dependent: :delete_all

  validates :name, presence: true
  validates :description, presence: true
end
