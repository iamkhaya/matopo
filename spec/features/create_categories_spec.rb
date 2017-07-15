require 'rails_helper'
RSpec.feature 'Users can create new categories' do
  before do
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_categories_path
    click_link 'Categories'
    click_link 'New Category'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Adrenaline'
    fill_in 'Description', with: 'High risk activities'
    click_button 'Create Category'
    expect(page).to have_content 'Category was successfully created.'
    expect(page).to have_content 'Adrenaline'
    expect(page).to have_content 'High risk activities'
  end

  scenario 'with invalid attributes' do
    find('input[name="commit"]').click
    expect(page).to have_content("can't be blank", count: 2)
  end
end
