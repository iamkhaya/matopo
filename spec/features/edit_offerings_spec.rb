require 'rails_helper'
RSpec.feature 'Users can edit existing offerings' do
  Offering.delete_all
  Provider.delete_all

  @provider = FactoryGirl.create(:provider,name: 'Death Cycles')
  @offering = FactoryGirl.create(:offering, provider: @provider)

  before do
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_offerings_path
    click_link 'Edit'
  end

  scenario 'with valid attributes' do
    fill_in 'Description', with: 'Cycle Tourzza Rikk'
    click_button 'Update Offering'
    expect(page).to have_content 'Offering was successfully updated.'
    expect(page).to have_content 'Cycle Tourzza Rikk'
  end

  scenario 'with invalid attributes' do
    fill_in 'Description', with: ''
    click_button 'Update Offering'
    expect(page).to have_content("can't be blank", count: 1)
  end
end
