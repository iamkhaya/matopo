class OfferingsController < ApplicationController
  before_action :set_provider, only: [:create]
  before_action :set_offering, only: %i[show edit update destroy]
  before_action :authenticate_user!
  layout :layout_by_resource

  def index
    @offerings = Offering.paginate(page: params[:page], per_page: 10)
  end

  def edit
    @offering = Offering.find(params[:id])
  end

  private

  def set_offering
    @offering = Offering.find(params[:id])
  end

  def set_provider
    @provider = if params[:offering][:provider_id] != ''
                  Provider.find(params[:offering][:provider_id])
                else
                  Provider.new
                end
  end

  def offering_params
    params.require(:offering).permit(:provider_id,
                                     :name,
                                     :description,
                                     :place,
                                     :pricingperperson,
                                     :inclusions,
                                     :exclusions,
                                     :activity_id,
                                     attachments_attributes: %i[file file_cache])
  end

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
