require 'rails_helper'
RSpec.feature 'Users can view reservations' do
  before do
    trip = FactoryGirl.create(:trip)
    reservation = FactoryGirl.create(:reservation, trip: trip)

    visit trips_path(trip)
    click_link 'View Trip'
  end

  scenario 'for a given trip' do 
    click_link '1'
    expect(page).to have_content 'booked'
  end
end
