FactoryGirl.define do
  factory :provider do
    name 'CyleX'
    province 'Western Cape'
    country 'South Africa'
    email_1 'admin@cyclex.com'
    email_2 'help@cyclex.com'
    phone_1 123_456_789
    phone_2 987_654_321
    tax_number 456_123
    street_number 301
    street_name_1 'Britton Avenue'
    city 'Cape Town'
    website 'www.cyclex.com'
  end
end
