require 'rails_helper'
RSpec.feature 'Users can view activities' do
  before do
    adrenaline = FactoryGirl.create(:category, name: 'Adrenaline')
    FactoryGirl.create(:activity, category: adrenaline,
                                  name: 'Sky Diving',
                                  description: 'Drop from the sky!')

    ie = FactoryGirl.create(:category, name: 'Super Geeks')
    FactoryGirl.create(:activity, category: ie,
                                  name: 'geeks', description: 'Arent a joke.')
    visit '/'
  end

  scenario 'for a given category' do
    click_link 'Adrenaline'
    expect(page).to have_content 'Sky Diving'
    expect(page).to_not have_content 'Arent a joke'
    click_link 'Sky Diving'
    expect(page).to have_content 'Drop from the sky'
  end
end
