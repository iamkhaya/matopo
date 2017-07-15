require 'rails_helper'
RSpec.feature 'Signed-in users can sign out' do
  let!(:user) { FactoryGirl.create(:user) }
  before do
    login_as(user)
  end
  scenario do
    visit '/admin'
    click_link 'Logout'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
