RSpec.feature 'Users can edit existing providers' do
  before do
    FactoryGirl.create(:provider, name: 'CyleX', province: 'Western Cape', country:'South Africa')
    visit '/providers'
    click_link 'Edit Provider'
  end

  scenario 'with valid attributes' do
    fill_in 'Name', with: 'CycleX'
    click_button 'Update Provider'
    expect(page).to have_content 'Provider has been updated.'
    expect(page).to have_content 'CycleX'
  end

  scenario 'with invalid attributes' do
    fill_in 'Name', with: ''
    click_button 'Update Provider'
    expect(page).to have_content 'Provider has not been updated.'
  end
end
