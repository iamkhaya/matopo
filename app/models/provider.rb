class Provider < ApplicationRecord
  validates :name, presence: true
  validates :email_1, presence: true
  validates :email_2, presence: true
  validates :phone_1, presence: true
  validates :phone_2, presence: true
  validates :tax_number, presence: true
  validates :street_number, presence: true
  validates :street_name_1, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :country, presence: true
  validates :website, presence: true
end
