require 'rails_helper'
RSpec.feature 'Users can delete continents' do
  scenario 'successfully' do
    FactoryGirl.create(:continent, name: 'Australia')
    visit '/continents'
    click_link 'Australia'
    click_link 'Delete Continent'
    expect(page).to have_content 'Continent has been deleted.'
    expect(page.current_url).to eq continents_url
    expect(page).to have_no_content 'Australia'
  end
end
