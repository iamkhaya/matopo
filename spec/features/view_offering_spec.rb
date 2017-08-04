require 'rails_helper'
RSpec.feature 'Users can view offerings' do
  before do
    provider = FactoryGirl.create(:provider)
    activity = FactoryGirl.create(:activity, id: 1, name: 'Cycle Tours')
    @offering = FactoryGirl.create(:offering, provider: provider, activity_id:1 )
    visit offerings_path
    click_link 'View Offering'
  end

  scenario 'for a given project' do
    expect(page.current_url).to eq offering_url(@offering)
  end
end
