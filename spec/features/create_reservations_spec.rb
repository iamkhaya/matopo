require 'rails_helper'

RSpec.feature 'Users can create reservations' do
  before do
    @trip = FactoryGirl.create(:trip)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_reservations_path
    click_link 'New Reservation'
  end

  scenario 'with valid attributes' do
    fill_in 'Offering', with: 'Mega Cycling'
    select 'My trip', from: 'Trip'

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
    expect(page).to have_content 'Reservation was successfully created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Reservation'
    expect(page).to have_content("can't be blank", count: 2)
  end
end
