class RegionsController < ApplicationController
  before_action :set_continent
  before_action :set_region, only: [:show, :edit, :update, :destroy]


  def index
    @regions = Region.all
  end

  def new
    @region = @continent.regions.build
  end

  def create
    @region = @continent.regions.build(region_params)
    if @region.save
      flash[:notice] = 'Region has been created.'
      redirect_to [@continent, @region]
    else
      flash.now[:alert] = 'Region has not been created.'
      render 'new'
    end
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    if @region.update(region_params)
      flash[:notice] = 'Region has been updated.'
      redirect_to [@continent, @region]
    else
      flash.now[:alert] = 'Region has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @region.destroy
    flash[:notice] = 'Region has been deleted.'
    redirect_to @continent
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end

  def set_continent
    @continent = Continent.find(params[:continent_id])
  end

  def set_region
    @region = @continent.regions.find(params[:id])
  end

end
