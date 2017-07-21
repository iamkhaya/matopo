class OfferingsController < ApplicationController
  before_action :set_provider
  before_action :set_offering, only: [:show, :edit, :update, :destroy]

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

  def edit
    @offering = Offering.find(params[:id])
  end

  def update
    if @offering.update(offering_params)
      flash[:notice] = 'Offering has been updated.'
      redirect_to [@provider, @offering]
    else
      flash.now[:alert] = 'Offering has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @offering.destroy
    flash[:notice] = 'Offering has been deleted.'
    redirect_to @provider
  end

  private

  def set_provider
    @provider = Provider.find(params[:provider_id])
  end

  def set_offering
    @offering = @provider.offerings.find(params[:id])
  end

  def offering_params
    params.require(:offering).permit(:activity_id, :description, :place,
                                     :pricingperperson, :inclusions,
                                     :exclusions)
  end
end
