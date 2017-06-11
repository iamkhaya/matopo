class OfferingsController < ApplicationController
  before_action :set_provider

  def index
    @offerings = Offering.all
  end

  def new
    @offering = @provider.offerings.build
  end

  def create
    @offering = @provider.offerings.build(offering_params)
    if @offering.save
      flash[:notice] = 'Offering has been created.'
      redirect_to [@provider, @offering]
    else
      flash.now[:alert] = 'Offering has not been created.'
      render 'new'
    end
  end

  private

  def set_provider
    @provider = Provider.find(params[:provider_id])
  end

  def offering_params
    params.require(:offering).permit(:activity, :description, :place,
                                     :pricingperperson, :inclusions,
                                     :exclusions, :provider)
  end
end
