require "rails_helper"
RSpec.feature "Users can view activities" do
  scenario "with the activity details" do
    activity = FactoryGirl.create(:activity, name: "Hiking")
    visit "/"
    click_link "Hiking"
    expect(page.current_url).to eq activity_url(activity)
  end
end
