class Trip < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :number_of_adults, presence: true
  validates :number_of_infants, presence: true
  validates :number_of_children, presence: true
  validates :city, presence: true
  validates :region, presence: true
  validates :country, presence: true
end
