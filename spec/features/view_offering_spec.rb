require 'rails_helper'
RSpec.feature 'Users can view offerings' do
  before do
    provider = FactoryGirl.create :provider
    offering = FactoryGirl.create(:offering, provider: provider)

    visit providers_path(provider)
    click_link 'View Provider'
  end

  scenario 'for a given project' do
    click_link 'Cycling'
    expect(page).to have_content 'This is my cycle activity'
  end
end
