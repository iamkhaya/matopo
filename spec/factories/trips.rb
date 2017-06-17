FactoryGirl.define do
  factory :trip do
    start_date "2017-06-17"
    end_date "2017-06-17"
    user_id "MyString"
    number_of_adults 1
    number_of_infants 1
    number_of_children 1
    city "MyString"
    country "MyString"
    region "MyString"
  end
end
