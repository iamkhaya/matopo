require 'rails_helper'
RSpec.feature 'Users can view providers' do
  before do
    Offering.delete_all
    Provider.delete_all
    @provider = FactoryGirl.create(:provider, name: 'DeathKwonDo')
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_providers_path
    first(:link, 'View').click
  end

  scenario 'with the providers details' do
    expect(page.current_url).to eq admin_provider_url(@provider)
  end
end
