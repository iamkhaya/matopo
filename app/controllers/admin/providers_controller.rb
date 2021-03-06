class Admin::ProvidersController < Admin::ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      flash[:notice] = 'Provider has been created.'
      redirect_to providers_path(@provider)
    else
      flash[:alert] = 'Provider has not been created.'
      render 'new'
    end
  end

  def update
    @provider = Provider.find(params[:id])
    if @provider.update(provider_params)
      flash[:notice] = 'Provider has been updated.'
      redirect_to providers_path
    else
      flash.now[:alert] = 'Provider has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @provider = Provider.find(params[:id])
    @provider.destroy
    flash[:notice] = 'Provider has been deleted.'
    redirect_to providers_path
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :email_1, :email_2, :phone_1,
                                     :phone_2, :tax_number, :street_number,
                                     :street_name_1, :city, :province,
                                     :country, :website)
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end
end
