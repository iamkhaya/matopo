require 'rails_helper'
RSpec.feature 'Users can delete reservations' do
  before do
    @trip = FactoryGirl.create(:trip)
    @reservation = FactoryGirl.create(:reservation, trip: @trip)

    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_reservations_path
    all('a', text: 'Delete')[1].click
  end
  scenario 'successfully' do
    expect(page).to have_content 'Reservation was successfully destroyed.'
    expect(page.current_url).to eq admin_reservations_url
  end
end
