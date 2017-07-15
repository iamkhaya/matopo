require 'rails_helper'

RSpec.feature 'Users can delete providers' do
  before do
    Offering.delete_all
    Provider.delete_all
    @provider = FactoryGirl.create(:provider, name: 'DeathKwonDo')
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_providers_path
    click_link 'Delete'
  end

  scenario 'successfully' do
    expect(page).to have_content 'Provider was successfully destroyed.'
    expect(page.current_url).to eq admin_providers_url
    expect(page).to have_no_content 'DeathKwonDo'
  end
end
