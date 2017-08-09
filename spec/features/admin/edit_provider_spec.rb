require 'rails_helper'

RSpec.feature 'Users can edit existing providers' do
  before do
    login_as(FactoryGirl.create(:user, :admin))
    FactoryGirl.create :provider
    visit '/providers'
    click_link 'Edit Provider'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'CycleX'
    select 'South Africa', from: 'Country'
    click_button 'Update Provider'
    expect(page).to have_content 'Provider has been updated.'
    expect(page).to have_content 'CycleX'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Provider'
    expect(page).to have_content 'Provider has not been updated.'
  end
end
