require 'rails_helper'
RSpec.feature 'Users can edit existing trips' do
  before do
    FactoryGirl.create(:trip)
    visit '/trips'
    click_link 'Edit Trip'
  end

  scenario 'with valid attributes' do
    select '2017', from: 'trip_start_date_1i'
    select 'July', from: 'trip_start_date_2i'
    select '30', from: 'trip_start_date_3i'

    select '2017', from: 'trip_end_date_1i'
    select 'August', from: 'trip_end_date_2i'
    select '8', from: 'trip_end_date_3i'

    fill_in 'Name', with: 'My Edited Trip'
    fill_in 'User', with: 1
    fill_in 'Number of adults', with: 5
    fill_in 'Number of infants', with: 1
    fill_in 'Number of children', with: 0
    fill_in 'City', with: 'Cape Town'
    fill_in 'Region', with: 'Western Cape'
    select 'South Africa', from: 'Country'
    click_button 'Update Trip'
    expect(page).to have_content 'Trip has been updated.'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    fill_in 'User', with: ''
    fill_in 'Number of adults', with: ''
    fill_in 'Number of infants', with: ''
    fill_in 'Number of children', with: ''
    fill_in 'City', with: ''
    fill_in 'Region', with: ''
    click_button 'Update Trip'
    expect(page).to have_content 'Trip has not been updated.'
    expect(page).to have_content "User can't be blank"
    expect(page).to have_content "Number of adults can't be blank"
    expect(page).to have_content "Number of infants can't be blank"
    expect(page).to have_content "Number of children can't be blank"
    expect(page).to have_content "Region can't be blank"
    expect(page).to have_content "City can't be blank"
    expect(page).to have_content "Country can't be blank"
  end
end
