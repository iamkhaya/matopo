require 'rails_helper'
RSpec.feature 'Users can create new trips' do
  before do
    login_as(FactoryGirl.create(:admin_user))
    visit admin_trips_path
    click_link 'New Trip'
  end
  scenario 'with valid attributes' do
    skip "Fix date picker code"
    select '2017-10-03', from: 'trip_start_date'
    select '2017-11-03', from: 'trip_end_date'
    fill_in 'Name', with: 'My Belarus Trip'
    fill_in 'User', with: 1
    fill_in 'Number of adults', with: 2
    fill_in 'Number of infants', with: 1
    fill_in 'Number of children', with: 0
    fill_in 'City', with: 'Cape Town'
    fill_in 'Region', with: 'Western Cape'
    select 'South Africa', from: 'Country'
    click_button 'Create Trip'
    expect(page).to have_content 'Trip was successfully created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Trip'
    expect(page).to have_content("can't be blank", count: 9)
  end
end
