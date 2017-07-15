require 'rails_helper'
RSpec.feature 'Users can view categories' do
  before do
    @category = FactoryGirl.create(:category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_categories_path
    click_link 'View'
  end

  scenario 'with the category details' do
    expect(page.current_url).to eq admin_category_url(@category)
  end
end
