require 'rails_helper'
RSpec.feature 'Users can edit existing reservations' do
  before do
    trip = FactoryGirl.create(:trip)
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1)
    @reservation = FactoryGirl.create(:reservation, offering: offering, trip: trip)

    login_as(FactoryGirl.create(:user, :admin))
    visit reservations_path(@reservation)
    click_link 'Edit Reservation'
  end

  scenario 'with valid attributes' do
    fill_in 'Status', with: 'Cancelled'
    click_button 'Update Reservation'
    expect(page).to have_content 'Reservation has been updated.'
  end

  scenario 'with invalid attributes' do
    fill_in 'Status', with: ''
    click_button 'Update Reservation'
    expect(page).to have_content 'Reservation has not been updated.'
  end
end
