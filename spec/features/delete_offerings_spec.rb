require 'rails_helper'
RSpec.feature 'Users can delete offerings' do
  before do
    @offering = FactoryGirl.create(:offering, provider: Provider.all[0])

    @user = FactoryGirl.create(:admin_user)
    login_as @user
    visit admin_offerings_path
    all('a', text: 'Delete')[1].click
  end
  scenario 'successfully' do
    expect(page).to have_content 'Offering was successfully destroyed.'
    expect(page.current_url).to eq admin_offerings_url
  end
end
