require 'rails_helper'
RSpec.feature 'Users can create new trips' do
  before do
    login_as(FactoryGirl.create(:user, :admin))
    visit '/trips'
    click_link 'New Trip'
  end
  scenario 'with valid attributes' do
    select '2017', from: 'trip_start_date_1i'
    select 'June', from: 'trip_start_date_2i'
    select '30', from: 'trip_start_date_3i'

    select '2017', from: 'trip_end_date_1i'
    select 'July', from: 'trip_end_date_2i'
    select '8', from: 'trip_end_date_3i'

    fill_in 'Name', with: 'My Belarus Trip'
    fill_in 'User', with: 1
    fill_in 'Number of adults', with: 2
    fill_in 'Number of infants', with: 1
    fill_in 'Number of children', with: 0
    fill_in 'City', with: 'Cape Town'
    fill_in 'Region', with: 'Western Cape'
    select 'South Africa', from: 'Country'
    click_button 'Create Trip'
    expect(page).to have_content 'Trip has been created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Trip'
    expect(page).to have_content 'Trip has not been created.'
    expect(page).to have_content "User can't be blank"
    expect(page).to have_content "Number of adults can't be blank"
    expect(page).to have_content "Number of infants can't be blank"
    expect(page).to have_content "Number of children can't be blank"
    expect(page).to have_content "Region can't be blank"
    expect(page).to have_content "City can't be blank"
    expect(page).to have_content "Country can't be blank"
  end
end
