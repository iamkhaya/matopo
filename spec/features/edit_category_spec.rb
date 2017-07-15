require 'rails_helper'

RSpec.feature 'Users can edit existing categories' do
  before do
    @category = FactoryGirl.create(:category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_categories_path
    click_link 'Edit'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Adrenaline Rush'
    click_button 'Update Category'
    expect(page).to have_content 'Category was successfully updated.'
    expect(page).to have_content 'Adrenaline Rush'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    fill_in 'Description', with: ''
    click_button 'Update Category'
    expect(page).to have_content("can't be blank", count: 2)
  end
end
