class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      flash[:notice] = 'Provider has been created.'
      redirect_to action: 'index'
    else
      flash[:alert] = 'Provider has not been created.'
      render 'new'
    end
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def update
    @provider = Provider.find(params[:id])
    if @provider.update(provider_params)
      flash[:notice] = 'Provider has been updated.'
      redirect_to action: 'index'
    else
      flash.now[:alert] = 'Provider has not been updated.'
      render 'edit'
    end
  end

  def show
    @provider = Provider.find(params[:id])
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :email_1, :email_2, :phone_1,
                                     :phone_2, :tax_number, :street_number,
                                     :street_name_1, :city, :province,
                                     :country, :website)
  end
end
