require 'rails_helper'
RSpec.feature 'Users can delete activities' do
  before do
    @category = FactoryGirl.create(:category)
    @activity = FactoryGirl.create(:activity, category: @category)
    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_activities_path
    click_link 'Delete'
  end

  scenario 'successfully' do
    expect(page).to have_content 'Activity was successfully destroyed.'
    expect(page.current_url).to eq admin_activities_url
  end
end
