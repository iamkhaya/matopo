require 'rails_helper'
RSpec.feature 'Users can edit existing activities' do
  before do
    @category = FactoryGirl.create(:category)
    @activity = FactoryGirl.create(:activity, category: @category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_activities_path
    click_link 'Edit'
  end

  scenario 'with valid attributes' do
    select 'Spine Thrillrs', from: 'Category'
    fill_in 'Name', with: 'Hiking and Climbing'
    click_button 'Update Activity'
    expect(page).to have_content 'Activity was successfully updated.'
    expect(page).to have_content 'Hiking and Climbing'
  end

  scenario 'with invalid attributes' do
    select 'Spine Thrillrs', from: 'Category'
    fill_in 'Name', with: ''
    click_button 'Update Activity'
    expect(page).to have_content("can't be blank", count: 1)
  end
end
