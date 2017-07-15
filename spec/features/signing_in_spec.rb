require 'rails_helper'
RSpec.feature 'Users can sign in' do
  let!(:user) { FactoryGirl.create(:user) }
  scenario 'with valid credentials' do
    @user = FactoryGirl.create(:admin_user)
    #  login_as @user
    visit '/admin'
    fill_in 'Email', with: 'dula@matopo.com'
    fill_in 'Password', with: 'password'
    click_button 'Login'
    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content 'dula@matopo.com'
  end
end
