class Admin::TripsController < Admin::ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      flash[:notice] = 'Trip has been created.'
      redirect_to trip_path(@trip)
    else
      flash[:alert] = 'Trip has not been created.'
      render 'new'
    end
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      flash[:notice] = 'Trip has been updated.'
      redirect_to trips_path
    else
      flash.now[:alert] = 'Trip has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    flash[:notice] = 'Trip has been deleted.'
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name,
                                 :start_date,
                                 :end_date,
                                 :user_id,
                                 :number_of_adults,
                                 :number_of_infants,
                                 :number_of_children,
                                 :city,
                                 :region,
                                 :country)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
