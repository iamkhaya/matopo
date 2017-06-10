require 'rails_helper'

RSpec.feature 'Users can create new continents' do
  before do
    visit continents_path
    click_link 'New continent'
  end
  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Africa'

    click_button 'Create Continent'
    expect(page).to have_content 'Continent has been created'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Continent'

    expect(page).to have_content 'Continent has not been created'
    expect(page).to have_content "Name can't be blank"
  end
end
