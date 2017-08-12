require 'rails_helper'

RSpec.feature 'Users can create new offerings' do
  before do
    login_as(FactoryGirl.create(:user, :admin))
    provider = FactoryGirl.create(:provider, name: 'Cyclix')
    activity = FactoryGirl.create(:activity, name: 'Cycle Tours')
    visit offerings_path
    click_link 'New Offering'
  end
  scenario 'with valid attributes' do
    select 'Cyclix', from: 'Provider'
    select 'Cycle Tours', from: 'Activity'
    fill_in 'Description', with: 'Cycle Around Town'
    fill_in 'Place', with: 'Here'
    fill_in 'Price per Person', with: 200
    fill_in 'Whats included', with: 'Adrenaline'
    fill_in 'Whats not included', with: 'No Adrenaline'
    attach_file 'File', 'spec/fixtures/offering_image_1.jpg'
    click_button 'Create Offering'
    expect(page).to have_content 'Offering has been created.'
    expect(page).to have_content 'offering_image_1.jpg'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Offering'
    expect(page).to have_content 'Offering has not been created.'
    expect(page).to have_content "Description can't be blank"
    expect(page).to have_content "Place can't be blank"
    expect(page).to have_content "Pricingperperson can't be blank"
    expect(page).to have_content "Inclusions can't be blank"
    expect(page).to have_content "Exclusions can't be blank"
  end
end
