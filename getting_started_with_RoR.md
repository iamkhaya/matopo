1. Generate new application
2. Create the page feature spec
require "rails_helper"
RSpec.feature "Users can create new activitys" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New activity"
    fill_in "Name", with: "Sublime Text 3"
    fill_in "Description", with: "A text editor for everyone"
    click_button "Create activity"
    expect(page).to have_content "activity has been created."
  end
end
3. Add the root route

Rails.application.routes.draw do
  root "activitys#index"
end

4. generate the controller
rails g controller activitys

5. define index Action in your controller

6. create the view at app/views/activitys/index.html.erb

7. Add a link to your index page
<%= link_to "New Activity", new_activity_path %>

8. Add resources to routes
resources :activitys

9. Add new action to controller
def new
          @activity = activity.new
end

10. Add the model
rails g model activity name description
bundle exec rake db:migrate

Add the new form under new view

11. Add the create action to the controller
def create
  @activity = activity.new(activity_params)
  if @activity.save
    flash[:notice] = "activity has been created."
    redirect_to @activity
  else
    # nothing, yet
end end

12 Add params
private
def activity_params
  params.require(:activity).permit(:name, :description, :category)
end


Add flash message to application.html
<% flash.each do |key, message| %>
  <div><%= message %></div>
<% end %>


RUD
-------
Add tests for RUD

2. Create factory

FactoryGirl.define do
  factory :activity do
    name "Example activity"
  end
end

1. create feature test
        require "rails_helper"
        RSpec.feature "Users can view activitys" do
          scenario "with the activity details" do
            activity = FactoryGirl.create(:activity, name: "Sublime Text 3")
            visit "/"
            click_link "Sublime Text 3"
            expect(page.current_url).to eq activity_url(activity)
end end
