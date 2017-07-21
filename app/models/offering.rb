class Offering < ApplicationRecord
  belongs_to :provider
  has_many :activity

  validates :description, presence: true, length: { maximum: 1000 }
  validates :place, presence: true
  validates :pricingperperson, presence: true
  validates :inclusions, presence: true
  validates :exclusions, presence: true
end
