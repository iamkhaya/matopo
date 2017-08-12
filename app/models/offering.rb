class Offering < ApplicationRecord
  belongs_to :provider
  has_many :reservations
  validates :description, presence: true, length: { maximum: 1000 }
  validates :place, presence: true
  validates :pricingperperson, presence: true
  validates :inclusions, presence: true
  validates :exclusions, presence: true
  mount_uploader :attachment, AttachmentUploader
end
