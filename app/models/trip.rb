class Trip < ApplicationRecord
  has_many :reservations, dependent: :delete_all

  validates :number_of_adults, presence: true
  validates :number_of_infants, presence: true
  validates :number_of_children, presence: true
  validates :city, presence: true
  validates :region, presence: true
  validates :country, presence: true

end