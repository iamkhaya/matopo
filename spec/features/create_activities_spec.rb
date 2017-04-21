require "rails_helper"

RSpec.feature "Users can create new activities" do
  before do
    category = FactoryGirl.create(:category, name: "Adrenaline")
    visit category_path(category)
    click_link "Add Activity"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Hiking"
    fill_in "Description", with: "Go up a mountain"

    click_button "Create Activity"
    expect(page).to have_content "Activity has been created."

  end

  scenario "with invalid attributes" do
    click_button "Create Activity"

    expect(page).to have_content "Activity has not been created."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end
end
