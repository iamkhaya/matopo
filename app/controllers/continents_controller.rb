class ContinentsController < ApplicationController
  def index
    @continents = Continent.all
  end

  def new
    @continent = Continent.new
  end

  def create
    @continent = Continent.new(continent_params)
    if @continent.save
      flash[:notice] = 'Continent has been created.'
      redirect_to @continent
    else
      flash[:alert] = 'Continent has not been created.'
      render 'index'
    end
  end

  def show
    @continent = Continent.find(params[:id])
  end

  def edit
    @continent = Continent.find(params[:id])
  end

  def update
    @continent = Continent.find(params[:id])
    if @continent.update(continent_params)
      flash[:notice] = 'Continent has been updated.'
      redirect_to action: 'index'
    else
      flash.now[:alert] = 'Continent has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @continent = Continent.find(params[:id])
    @continent.destroy
    flash[:notice] = 'Continent has been deleted.'
    redirect_to continents_path
  end

  private

  def continent_params
    params.require(:continent).permit(:name)
  end
end
