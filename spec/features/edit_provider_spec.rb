require 'rails_helper'

RSpec.feature 'Users can edit existing providers' do
  before do
    FactoryGirl.create(:provider, name: 'CyleX',
                                  province: 'Western Cape',
                                  country: 'South Africa',
                                  email_1: 'admin@cyclex.com',
                                  email_2: 'help@cyclex.com',
                                  phone_1: 123_456_789,
                                  phone_2: 987_654_321,
                                  tax_number: 456_123,
                                  street_number: 301,
                                  street_name_1: 'Britton Avenue',
                                  city: 'Cape Town',
                                  website: 'www.cyclex.com')

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
