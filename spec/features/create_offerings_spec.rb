require 'rails_helper'

RSpec.feature 'Users can create new offerings' do
  before do
    FactoryGirl.create(:provider, name: 'CycleX')
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_offerings_path
    click_link 'New Offering'
  end
  scenario 'with valid attributes' do
    select 'CycleX', from: 'Provider'
    fill_in 'Activity', with: 'Cycle Tours'
    fill_in 'Description', with: 'Cycle Around Town'

    fill_in 'Place', with: 'Here'
    fill_in 'Pricingperperson', with: 200
    fill_in 'Inclusions', with: 'Adrenaline'
    fill_in 'Exclusions', with: 'No Adrenaline'
    click_button 'Create Offering'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Offering'
    expect(page).to have_content("can't be blank", count: 6)
  end
end
