require 'rails_helper'
RSpec.feature 'Users can delete activities' do
    scenario 'successfully' do
        FactoryGirl.create(:activity, name: 'Hiking')
        visit '/'
        click_link 'Hiking'
        click_link 'Delete Activity'
        expect(page).to have_content 'Activity has been deleted.'
        expect(page.current_url).to eq activities_url
        expect(page).to have_no_content 'Sublime Text 3'
    end
end
