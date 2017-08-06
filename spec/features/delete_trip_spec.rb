require 'rails_helper'

RSpec.feature 'Users can delete providers' do
  scenario 'successfully' do
    FactoryGirl.create(:trip)
    visit '/trips'
    click_link 'Delete Trip'
    expect(page).to have_content 'Trip has been deleted.'
    expect(page.current_url).to eq trips_url
  end
end
