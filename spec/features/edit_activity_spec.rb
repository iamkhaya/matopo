RSpec.feature "Users can edit existing activities" do
  before do
    FactoryGirl.create(:activity, name: "Hiking")
    visit "/"
    click_link "Hiking"
    click_link "Edit Activity"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Hiking and Climbing"
    click_button "Update Activity"
    expect(page).to have_content "Activity has been updated."
    expect(page).to have_content "Hiking and Climbing"
  end

  scenario "with invalid attributes" do
    fill_in "Name", with: ""
    click_button "Update Activity"
    expect(page).to have_content "Activity has not been updated."
  end
end
