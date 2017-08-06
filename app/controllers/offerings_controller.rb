class OfferingsController < ApplicationController
  before_action :set_provider, only: [:create]
  before_action :set_offering, only: [:show, :edit, :update, :destroy]

  def index
    @offerings = Offering.all
  end

  def new
    @offering = Offering.new
  end

  def create
    @offering = @provider.offerings.build(offering_params)
    if @offering.save
      flash[:notice] = 'Offering has been created.'
      redirect_to offering_path(@offering)
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
    redirect_to offerings_path
  end

  private

  def offering_params
    params.require(:offering).permit(:provider_id,
                                     :name,
                                     :description,
                                     :place,
                                     :pricingperperson,
                                     :inclusions,
                                     :exclusions,
                                     :activity_id)
  end

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
end
