require 'rails_helper'
RSpec.feature 'Users can view activities' do
  let (:activity) do
    FactoryGirl.create(:activity_with_categories,
                       categories_count: 2)
  end

  before do
    login_as(FactoryGirl.create(:admin_user))
    visit activities_path(activity)
    click_link 'View Activity'
  end

  scenario 'for a given activity' do
    expect(page.current_url).to eq activity_url(activity)
  end
end
