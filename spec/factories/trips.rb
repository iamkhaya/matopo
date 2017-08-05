FactoryGirl.define do
  factory :trip do
    name 'My Sassy Salamander'
    start_date '2017-06-17'
    end_date '2017-06-17'
    user_id 'User ID'
    number_of_adults 1
    number_of_infants 1
    number_of_children 1
    city 'Cape Town'
    country 'South Africa'
    region 'Western Province'
  end
end
