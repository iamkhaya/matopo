require 'rails_helper'
RSpec.feature 'Users can view reservations' do
  before do
    @trip = FactoryGirl.create :trip
    @reservation = FactoryGirl.create(:reservation, trip: @trip)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_reservations_path
    click_link 'View'
  end

  scenario 'for a given trip' do
    expect(page.current_url).to eq admin_reservation_url(@reservation)
  end
end
