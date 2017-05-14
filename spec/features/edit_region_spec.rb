require 'rails_helper'
RSpec.feature 'Users can edit existing regions' do
  let(:continent) { FactoryGirl.create(:continent) }
  let(:region) { FactoryGirl.create(:region, continent: continent) }

  before do
    visit continent_region_path(continent, region)
    click_link 'Edit Region'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Western Africa'
    click_button 'Update Region'
    expect(page).to have_content 'Region has been updated.'
    expect(page).to have_content 'Western Africa'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Region'
    expect(page).to have_content 'Region has not been updated.'
  end
end
