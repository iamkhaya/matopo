require 'rails_helper'
RSpec.feature 'Users can view regions' do
  before do
    continent = FactoryGirl.create(:continent, name: 'Africa')
    FactoryGirl.create(:region, continent: continent, name: 'Southern Africa')

    FactoryGirl.create(:region, continent: continent, name: 'East Africa')
    visit'/continents'
  end

  scenario 'for a given continent' do
    click_link 'Africa'
    expect(page).to have_content 'Southern Africa'
    expect(page).to_not have_content 'Standards compliance'
  end
end
