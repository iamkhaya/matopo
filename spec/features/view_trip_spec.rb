require 'rails_helper'
RSpec.feature 'Users can view trips' do
  before do
    @trip = FactoryGirl.create(:trip)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_trips_path
    click_link 'View'
  end

  scenario 'with the trip details' do
    expect(page.current_url).to eq admin_trip_url(@trip)
  end
end
