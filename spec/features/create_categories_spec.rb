require "rails_helper"

RSpec.feature "Users can create new categories" do
  scenario "with valid attributes" do
    visit "/categories"
    click_link "New Category"
    fill_in "Name", with: "Adrenaline"
    fill_in "Description", with: "High risk activities"
    click_button "Create Category"
    expect(page).to have_content "Category has been created."
  end
end
