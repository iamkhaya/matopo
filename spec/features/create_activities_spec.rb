require 'rails_helper'

RSpec.feature 'Users can create new activities' do
  before do
    @category = FactoryGirl.create(:category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_activities_path
    click_link 'New Activity'
  end

  scenario 'with valid attributes' do
    select 'Spine Thrillrs', from: 'Category'
    fill_in 'Name', with: 'Hiking'
    fill_in 'Description', with: 'Go up a mountain'
    click_button 'Create Activity'
    expect(page).to have_content 'Activity was successfully created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Activity'
    expect(page).to have_content("can't be blank", count: 2)
  end
end
