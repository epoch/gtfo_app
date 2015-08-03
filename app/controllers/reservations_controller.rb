class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @reservation.room_id = params[:room_id]
  end

  def create
    @reservation = Reservation.new
    @reservation.start_at = Date.new(params[:reservation]['start_at(1i)'].to_i)

    if @reservation.update(reservation_params)
      redirect_to @reservation.room
    else
      render :new
    end

  end

  private

  def reservation_params
    params.require(:reservation).permit(:email, :room_id)
  end
end