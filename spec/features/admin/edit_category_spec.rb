require 'rails_helper'
RSpec.feature 'Users can edit existing categories' do
  before do
    FactoryGirl.create(:category, name: 'Adrenaline')
    login_as(FactoryGirl.create(:admin_user))
    visit '/categories'
    click_link 'Adrenaline'
    click_link 'Edit Category'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Adrenaline Rush'
    click_button 'Update Category'
    expect(page).to have_content 'Category has been updated.'
    expect(page).to have_content 'Adrenaline Rush'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Category'
    expect(page).to have_content 'Category has not been updated.'
  end
end
