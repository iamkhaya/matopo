require 'rails_helper'

RSpec.feature 'Users can create new offerings' do
  before do
    provider = FactoryGirl.create :provider

    visit providers_path(provider)
    click_link 'New Offering'
  end
  scenario 'with valid attributes' do
    fill_in 'Activity', with: 'Cycle Tours'
    fill_in 'Description', with: 'Cycle Around Town'
    fill_in 'Place', with: 'Here'
    fill_in 'Pricing Per Person', with: 200
    fill_in 'Inclusions', with: 'Adrenaline'
    fill_in 'Exclusions', with: 'No Adrenaline'
    click_button 'Create Offering'
  end


  scenario 'with invalid attributes' do
    click_button 'Create Offering'
    expect(page).to have_content 'Offering has not been created.'
    expect(page).to have_content "Activity can't be blank"
    expect(page).to have_content "Decription can't be blank"
    expect(page).to have_content "Place can't be blank"
    expect(page).to have_content "PricingPerPerson can't be blank"
    expect(page).to have_content "Inclusions can't be blank"
    expect(page).to have_content "Inclusions can't be blank"
    expect(page).to have_content "Exclusions can't be blank"
  end
end
