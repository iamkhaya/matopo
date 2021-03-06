class TripsController < ApplicationController
  before_action :authenticate_user!
  layout :layout_by_resource
  def index
    @trips = Trip.all
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:id])
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

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
