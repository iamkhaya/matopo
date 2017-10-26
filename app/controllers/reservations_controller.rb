class ReservationsController < ApplicationController
  before_action :set_trip, only: [:create]
  before_action :set_reservation, only: %i[show edit update destroy]
  before_action :authenticate_user!
  layout :layout_by_resource
  def index
    @reservations = Reservation.all
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def show; end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_trip
    @trip = if params[:trip_id].blank?
              Trip.new
            else
              Trip.find(params[:trip_id])
            end
  end

  def reservation_params
    params.require(:reservation).permit(:booking_date, :start_time,
                                        :end_time, :status,
                                        :user_id, :exclusions,
                                        :inclusions, :offering_id)
  end

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
