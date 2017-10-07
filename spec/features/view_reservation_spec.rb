require 'rails_helper'
RSpec.feature 'Users can view reservations' do
  before do
    trip = FactoryGirl.create(:trip)
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
    @reservation = FactoryGirl.create(:reservation, offering: offering, trip: trip)

    login_as(FactoryGirl.create(:user, :admin))
    visit reservations_path(@reservation)
    click_link 'View Reservation'
  end

  scenario 'for a given reservation' do
    expect(page.current_url).to eq reservation_url(@reservation)
  end
end
