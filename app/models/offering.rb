class Offering < ApplicationRecord
  belongs_to :provider
  belongs_to :activity
  has_many :reservations
  has_many :attachments, dependent: :destroy

  has_attached_file :feature_picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :attachments, reject_if: :all_blank

  validates :description, presence: true, length: { maximum: 1000 }
  validates :place, presence: true
  validates :pricingperperson, presence: true
  validates :inclusions, presence: true
  validates :exclusions, presence: true

end
