require 'rails_helper'
RSpec.feature 'Users can delete reservations' do
  before do
    trip = FactoryGirl.create(:trip)
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
    @reservation = FactoryGirl.create(:reservation, offering: offering, trip: trip)

    visit reservations_path(@reservation)
  end
  scenario 'successfully' do
    click_link 'Delete Reservation'
    expect(page).to have_content 'Reservation has been deleted.'
    expect(page.current_url).to eq reservations_url
  end
end
