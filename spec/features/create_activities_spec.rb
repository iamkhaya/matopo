require "rails_helper"
RSpec.feature "Users can create new activities" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New Activity"
    fill_in "Name", with: "Hiking"
    fill_in "Description", with: "Go up a mountain"
    click_button "Create Activity"
    expect(page).to have_content "Activity has been created."

    activity = Activity.find_by(name: "Hiking")
    expect(page.current_url).to eq activity_url(activity)

    title = "Hiking - Activity - Matopo"
    expect(page).to have_title title
  end
end
