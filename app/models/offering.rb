class Offering < ApplicationRecord
  belongs_to :provider
  has_many :reservations
  has_many :attachments, dependent: :destroy

  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  validates :description, presence: true, length: { maximum: 1000 }
  validates :place, presence: true
  validates :pricingperperson, presence: true
  validates :inclusions, presence: true
  validates :exclusions, presence: true

end
