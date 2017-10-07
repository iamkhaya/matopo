require 'rails_helper'
RSpec.feature 'Users can view providers' do
  scenario 'with the provider details' do
    login_as(FactoryGirl.create(:user, :admin))
    provider = FactoryGirl.create(:provider)
    visit '/providers'
    click_link 'View Provider'
    expect(page.current_url).to eq provider_url(provider)
  end
end
