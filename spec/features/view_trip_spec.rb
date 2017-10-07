require 'rails_helper'
RSpec.feature 'Users can view trips' do
  scenario 'with the trip details' do
    login_as(FactoryGirl.create(:user, :admin))
    trip = FactoryGirl.create(:trip)
    visit '/trips'
    click_link 'View Trip'
    expect(page.current_url).to eq trip_url(trip)
  end
end
