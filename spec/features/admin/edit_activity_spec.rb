require 'rails_helper'
RSpec.feature 'Users can edit existing activities' do
  let (:activity) do
    FactoryGirl.create(:activity_with_categories,
                       categories_count: 2)
  end
  before do
    login_as(FactoryGirl.create(:user, :admin))
    visit activity_path(activity)
    click_link 'Edit Activity'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Hiking and Climbing'
    click_button 'Update Activity'
    expect(page).to have_content 'Activity has been updated.'
    expect(page).to have_content 'Hiking and Climbing'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Activity'
    expect(page).to have_content 'Activity has not been updated.'
  end
end
