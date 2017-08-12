class OfferingsController < ApplicationController
  before_action :set_provider, only: [:create]
  before_action :set_offering, only: [:show, :edit, :update, :destroy]

  def index
    @offerings = Offering.all
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
end
