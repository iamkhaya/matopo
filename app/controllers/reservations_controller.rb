class ReservationsController < ApplicationController
  before_action :set_trip
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = @trip.reservations.build
  end

  def create
    @reservation = @trip.reservations.build(reservation_params)
    if @reservation.save
      flash[:notice] = 'Reservation has been created.'
      redirect_to [@trip, @reservation]
    else
      flash.now[:alert] = "Reservation hasn't been created."
      render 'new'
    end
  end

  def show; end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def set_reservation
    @reservation = @trip.reservations.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:booking_date, :start_time,
                                        :end_time, :status,
                                        :user_id, :exclusions,
                                        :inclusions, :offering)
  end
end
