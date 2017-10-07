require 'rails_helper'
RSpec.feature 'Non Admin Users can view separate home page' do


  before do
    visit '/'
  end

  scenario 'for signed in admin users' do
    skip
    login_as(FactoryGirl.create(:user, :admin))
    expect(page.current_url).to eq admin_root_url
  end
end
