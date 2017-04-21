require 'rails_helper'
RSpec.feature 'Users can delete activities' do
  let(:category) { FactoryGirl.create(:category) }
  let(:activity) { FactoryGirl.create(:activity, category: category) }

  before do
    visit category_activity_path(category, activity)
  end
  scenario 'successfully' do
    click_link 'Delete Activity'
    expect(page).to have_content 'Activity has been deleted.'
    expect(page.current_url).to eq category_url(category)
  end
end
