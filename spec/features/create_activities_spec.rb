require "rails_helper"
RSpec.feature "Users can create new activities" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New Activity"
    fill_in "Name", with: "Hiking"
    fill_in "Description", with: "Go up a mountain"
    click_button "Create Activity"
    expect(page).to have_content "Activity has been created."
  end
end
