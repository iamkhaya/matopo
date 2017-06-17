class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      flash[:notice] = 'Trip has been created.'
      redirect_to action: 'index'
    else
      flash[:alert] = 'Trip has not been created.'
      render 'new'
    end
  end

  private

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
