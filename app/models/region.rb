class Region < ApplicationRecord
  belongs_to :continent

  validates :name, presence: true
end
