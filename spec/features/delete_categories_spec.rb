require 'rails_helper'
RSpec.feature 'Users can delete categories' do
  before do
    @category = FactoryGirl.create(:category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_categories_path
    click_link 'Delete'
  end

  scenario 'successfully' do
    expect(page).to have_content 'Category was successfully destroyed.'
    expect(page.current_url).to eq admin_categories_url
    expect(page).to have_no_content 'Adrenaline'
  end
end
