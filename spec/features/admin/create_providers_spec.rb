require 'rails_helper'

RSpec.feature 'Users can create new providers' do
  before do
    login_as(FactoryGirl.create(:user, :admin))
    visit '/providers'
    click_link 'New Provider'
  end
  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Cycle Trekkers'
    fill_in 'Email 1', with: 'admin@cycletrekkers.com'
    fill_in 'Email 2', with: 'tech@cycletrekkers.com'
    fill_in 'Phone 1', with: 235_648_574
    fill_in 'Phone 2', with: 587_452_654
    fill_in 'Tax number', with: 123_456_781
    fill_in 'Street number', with: 34
    fill_in 'Street name 1', with: 'Britton'
    fill_in 'City', with: 'Cape Town'
    fill_in 'Province', with: 'Western Cape'
    select 'South Africa', from: 'Country'
    fill_in 'Website', with: 'www.cycleafrica.com'

    click_button 'Create Provider'
    expect(page).to have_content 'Provider has been created'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Provider'

    expect(page).to have_content 'Provider has not been created'
    expect(page).to have_content "Name can't be blank"
  end
end
