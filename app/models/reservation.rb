class Reservation < ApplicationRecord
  belongs_to :trip
  belongs_to :offering

  validates :booking_date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :user_id, presence: true
  validates :offering, presence: true
  validates :status, presence: true
end
