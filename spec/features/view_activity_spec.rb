require 'rails_helper'
RSpec.feature 'Users can view activities' do
  before do
    adrenaline = FactoryGirl.create(:category, name: 'Adrenaline')
    FactoryGirl.create(:activity, category: adrenaline,
                                  name: 'Sky Diving',
                                  description: 'Drop from the sky!')

    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_activities_path
    click_link 'View'
  end

  scenario 'for a given category' do
    expect(page).to have_content 'Sky Diving'
    expect(page).to have_content 'Drop from the sky'
  end
end
