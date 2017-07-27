FactoryGirl.define do
  factory :activity do
    name 'Hiking'
    description 'Go up a mountain'
    categories

    factory :activity_with_categories do
      transient do
        categories_count 1
      end
    end

    trait :categories do
      categories { [FactoryGirl.create(:category)] }
    end
  end
end
