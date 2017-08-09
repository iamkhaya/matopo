require 'rails_helper'

RSpec.feature 'Users can create reservations' do
  before do
    trip = FactoryGirl.create(:trip)
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
    visit reservations_path
    click_link 'New Reservation'
  end

  scenario 'with valid attributes' do
    select 'My Sassy Salamander', from: 'Trip'
    fill_in 'User', with: 1
    select 'Mega Cycling', from: 'Offering'

    select '2017', from: 'reservation_booking_date_1i'
    select 'July', from: 'reservation_booking_date_2i'
    select '8', from: 'reservation_booking_date_3i'
    select '20', from: 'reservation_booking_date_4i'
    select '08', from: 'reservation_booking_date_5i'

    select '20', from: 'reservation_start_time_4i'
    select '00', from: 'reservation_start_time_5i'

    select '20', from: 'reservation_end_time_4i'
    select '30', from: 'reservation_end_time_5i'

    fill_in 'Status', with: 'booked'
    click_button 'Create Reservation'
    expect(page).to have_content 'Reservation has been created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Reservation'
    expect(page).to have_content "Reservation hasn't been created"
    expect(page).to have_content "User can't be blank"
    expect(page).to have_content "Status can't be blank"
  end
end
