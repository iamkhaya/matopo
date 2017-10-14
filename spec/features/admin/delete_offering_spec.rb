require 'rails_helper'
RSpec.feature 'Users can delete offerings' do
  before do
    login_as(FactoryGirl.create(:admin_user))
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
    visit offerings_path
  end
  scenario 'successfully' do
    click_link 'Delete Offering'
    expect(page).to have_content 'Offering has been deleted.'
    expect(page.current_url).to eq offerings_url
  end
end
