require 'rails_helper'
RSpec.feature 'Users can create new regions from continents' do
  before do
    continent = FactoryGirl.create(:continent, name: 'Africa')
    visit continent_path(continent)
    click_link 'New Region'
  end
  scenario 'with valid attributes' do
    fill_in 'Name', with: 'West Africa'
    click_button 'Create Region'
    expect(page).to have_content 'Region has been created.'
  end
  scenario 'with invalid attributes' do
    click_button 'Create Region'
    expect(page).to have_content 'Region has not been created.'
    expect(page).to have_content "Name can't be blank"
  end
end
