class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    binding.pry
    @trip = Trip.new(trip_params)
    if @trip.save
      flash[:notice] = 'Trip has been created.'
      redirect_to @trip
    else
      flash[:alert] = 'Trip has not been created.'
      render 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      flash[:notice] = 'Trip has been updated.'
      redirect_to action: 'index'
    else
      flash.now[:alert] = 'Trip has not been updated.'
      render 'edit'
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    flash[:notice] = 'Trip has been deleted.'
    redirect_to action: 'index'
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = 'The trip you were looking for could not be found.'
    redirect_to trips_path
  end

  def trip_params
    params.require(:trip).permit(:start_date,
                                 :end_date,
                                 :user_id,
                                 :number_of_adults,
                                 :number_of_infants,
                                 :number_of_children,
                                 :city,
                                 :region,
                                 :country)
  end
end
