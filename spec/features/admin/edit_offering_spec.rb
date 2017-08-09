require 'rails_helper'
RSpec.feature 'Users can edit existing offerings' do
  before do
    login_as(FactoryGirl.create(:user, :admin))
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
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
