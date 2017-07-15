require 'rails_helper'
RSpec.feature 'Users can view offerings' do
  before do
    @offering = FactoryGirl.create(:offering, provider: Provider.all[0])
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_offerings_path
    first(:link, 'View').click
  end
  scenario 'for a given provider' do
    expect(page.current_url).to eq admin_offering_url(@offering)
  end
end
