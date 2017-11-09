require 'rails_helper'
RSpec.feature 'Users can edit existing categories' do
  before (:each) do
    puts 'I ran'
    FactoryGirl.create(:category, name: 'Adrenaline')
    # login_as(FactoryGirl.create(:user, :admin))
    visit '/admin'
    fill_in 'Email', with: 'test1@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'


  end

  scenario 'with valid attributes' do
    visit '/categories'
    click_link 'edit-category'
    fill_in 'Name', with: 'Adrenaline Rush'
    click_button 'Update Category'
    expect(page).to have_content 'Category has been updated.'
    expect(page).to have_content 'Adrenaline Rush'
  end

  scenario 'with invalid attributes' do
    visit '/categories'
    click_link 'edit-category'
    binding.pry
    fill_in 'Name', with: ''
    click_button 'Update Category'
    expect(page).to have_content 'Category has not been updated.'
  end
end
