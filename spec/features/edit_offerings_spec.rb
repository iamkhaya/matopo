require 'rails_helper'
RSpec.feature 'Users can edit existing offerings' do
  before do
    provider = FactoryGirl.create(:provider)

    offering = FactoryGirl.create(:offering, provider: provider)
    visit offerings_path
    click_link 'Edit Offering'
  end

  scenario 'with valid attributes' do
    fill_in 'Description', with: 'Cycle Tourzza Rikk'
    click_button 'Update Offering'
    expect(page).to have_content 'Offering has been updated.'
    expect(page).to have_content 'Cycle Tourzza Rikk'
  end

  scenario 'with invalid attributes' do
    fill_in 'Description', with: ''
    click_button 'Update Offering'
    expect(page).to have_content 'Offering has not been updated.'
  end
end
