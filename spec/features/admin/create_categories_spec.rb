require 'rails_helper'
RSpec.feature 'Users can create new categories' do
  before do
    login_as(FactoryGirl.create(:admin_user))
    visit admin_categories_path
    click_link 'New Category'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Adrenaline'
    fill_in 'Description', with: 'High risk activities'
    click_button 'Create Category'
    expect(page).to have_content 'Category was successfully created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Category'
  expect(page).to have_content("can't be blank", count: 2)
  end
end
