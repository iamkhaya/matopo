FactoryGirl.define do
  factory :reservation do
    user_id 1
    offering 1
    booking_date '2017-06-19 22:05:31'
    start_time '2017-06-19 22:05:31'
    end_time '2017-06-19 22:05:31'
    status 'booked'
    trip nil
  end
end
