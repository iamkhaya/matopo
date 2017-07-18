require 'rails_helper'

RSpec.feature 'Users can edit existing continents' do
  before do
    FactoryGirl.create(:continent, name: 'African')
    visit '/continents'
    click_link 'Edit Continent'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Africa'
    click_button 'Update Continent'
    expect(page).to have_content 'Continent has been updated.'
    expect(page).to have_content 'Africa'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Continent'
    expect(page).to have_content 'Continent has not been updated.'
  end
end
