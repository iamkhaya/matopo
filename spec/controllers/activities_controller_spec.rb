require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
    it 'handles a missing activity correctly' do
      get :show, id: 'not-here'
      expect(response).to redirect_to(activities_path)
      message = 'The activity you were looking for could not be found.'
      expect(flash[:alert]).to eq message
    end
end
