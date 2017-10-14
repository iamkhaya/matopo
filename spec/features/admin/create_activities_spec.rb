require 'rails_helper'

RSpec.feature 'Users can create new activities' do
  before do
    login_as(FactoryGirl.create(:admin_user))
    category = FactoryGirl.create(:category, name: 'Adrenaline')
    visit admin_activities_path
    click_link 'New Activity'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Hiking'
    fill_in 'Description', with: 'Go up a mountain'
    select 'Adrenaline', from: 'Categories'
    click_button 'Create Activity'
    expect(page).to have_content 'Activity was successfully created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Activity'
    expect(page).to have_content("can't be blank", count: 3)
  end
end
