require 'rails_helper'
RSpec.feature 'Users can delete activities' do
  let(:continent) { FactoryGirl.create(:continent) }
  let(:region) { FactoryGirl.create(:region, continent: continent) }

  before do
    visit continent_region_path(continent, region)
  end
  scenario 'successfully' do
    click_link 'Delete Region'
    expect(page).to have_content 'Region has been deleted.'
    expect(page.current_url).to eq continent_url(continent)
  end
end
