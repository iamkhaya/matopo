require "rails_helper"
RSpec.feature "Users can view categories" do
  scenario "with the category details" do
    login_as(FactoryGirl.create(:user, :admin))
    category = FactoryGirl.create(:category, name: "Adrenaline")
    visit "/categories"
    click_link "Adrenaline"
    expect(page.current_url).to eq category_url(category)
  end
end
