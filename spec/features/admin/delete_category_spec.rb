require 'rails_helper'
RSpec.feature 'Users can delete categories' do
    scenario 'successfully' do
        FactoryGirl.create(:category, name: 'Adrenaline')
        login_as(FactoryGirl.create(:admin_user))
        visit '/categories'
        click_link 'Adrenaline'
        click_link 'Delete category'
        expect(page).to have_content 'Category has been deleted.'
        expect(page.current_url).to eq categories_url
        expect(page).to have_no_content 'Adrenaline'
    end
end
