require 'rails_helper'
RSpec.feature 'Users can edit existing offerings' do
  let(:provider) { FactoryGirl.create(:provider) }
  let(:offering) { FactoryGirl.create(:offering, provider: provider) }

  before do
    visit provider_offering_path(provider, offering)
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
