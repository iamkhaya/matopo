require 'rails_helper'
RSpec.feature 'Users can delete offerings' do
  let(:provider) { FactoryGirl.create(:provider) }
  let(:offering) { FactoryGirl.create(:offering, provider: provider) }
  before do
    visit provider_offering_path(provider, offering)
  end
  scenario 'successfully' do
    click_link 'Delete Offering'
    expect(page).to have_content 'Offering has been deleted.'
    expect(page.current_url).to eq provider_url(provider)
  end
end
