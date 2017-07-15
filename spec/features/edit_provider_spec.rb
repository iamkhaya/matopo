require 'rails_helper'

RSpec.feature 'Users can edit existing providers' do
  before do
    Offering.delete_all
    Provider.delete_all
    @provider = FactoryGirl.create(:provider, name: 'CycleX')
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_providers_path
    click_link 'Edit'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'CycleXo'
    select 'South Africa', from: 'Country'
    click_button 'Update Provider'
    expect(page).to have_content 'Provider was successfully updated.'
    expect(page).to have_content 'CycleXo'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Provider'
    expect(page).to have_content("can't be blank", count: 1)
  end
end
