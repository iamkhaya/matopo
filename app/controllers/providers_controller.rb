class ProvidersController < ApplicationController
  before_action :authenticate_user!
  def index
    @providers = Provider.all
  end

  def edit
    @provider = Provider.find(params[:id])
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
