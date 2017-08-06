require 'rails_helper'
RSpec.feature 'Users can delete activities' do
  let (:activity) do
    FactoryGirl.create(:activity_with_categories,
                       categories_count: 2)
  end

  before do
    visit activity_path(activity)
  end
  scenario 'successfully' do
    click_link 'Delete Activity'
    expect(page).to have_content 'Activity has been deleted.'
  end
end
