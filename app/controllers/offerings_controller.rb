class OfferingsController < ApplicationController
  before_action :set_provider, only: [:create]
  before_action :set_offering, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @offerings = Offering.all
  end

  def edit
    @offering = Offering.find(params[:id])
  end

  before_action :set_provider, only: [:create]
  before_action :set_offering, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @offering = Offering.new
    # authorize @offering, :create?
    6.times { @offering.attachments.build }

  end

  def create
    binding.pry
    @offering = @provider.offerings.build(offering_params)
    if @offering.save
      flash[:notice] = 'Offering was successfully created..'
      redirect_to offering_path(@offering)
    else
      flash.now[:alert] = 'Offering has not been created.'
      render 'new'
    end
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
                                     :activity_id,
                                     attachments_attributes: [:file, :file_cache])
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
