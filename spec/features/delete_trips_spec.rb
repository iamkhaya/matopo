require 'rails_helper'

RSpec.feature 'Users can delete trips' do
  before do
    @trip = FactoryGirl.create(:trip)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_trips_path
    click_link 'Delete'
  end

  scenario 'successfully' do
    expect(page).to have_content 'Trip was successfully destroyed.'
    expect(page.current_url).to eq admin_trips_url
  end
end
