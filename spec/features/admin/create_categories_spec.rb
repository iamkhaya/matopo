require 'rails_helper'
RSpec.feature 'Users can create new categories' do
  before do
    visit '/categories'
    click_link 'New Category'
  end
  scenario 'with valid attributes' do
    fill_in 'Name', with: 'Adrenaline'
    fill_in 'Description', with: 'High risk activities'
    click_button 'Create Category'
    expect(page).to have_content 'Category has been created.'
  end

  scenario 'with invalid attributes' do
    click_button 'Create Category'

    expect(page).to have_content 'Category has not been created.'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end
end
