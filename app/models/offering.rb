class Offering < ApplicationRecord
  belongs_to :provider

  validates :description, presence: true, length: { maximum: 1000 }
  validates :activity, presence: true
  validates :description, presence: true
  validates :place, presence: true
  validates :pricingperperson, presence: true
  validates :inclusions, presence: true
  validates :exclusions, presence: true
end
