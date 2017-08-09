class Admin::ReservationsController < Admin::ApplicationController
  before_action :set_trip, only: [:create]
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @trip.reservations.build(reservation_params)
    if @reservation.save
      flash[:notice] = 'Reservation has been created.'
      redirect_to reservation_path(@reservation)
    else
      flash.now[:alert] = "Reservation hasn't been created."
      render 'new'
    end
  end

  def update
    if @reservation.update(reservation_params)
      flash[:notice] = 'Reservation has been updated.'
      redirect_to reservations_path
    else
      flash.now[:alert] = 'Reservation has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = 'Reservation has been deleted.'
    redirect_to reservations_path
  end

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
end
