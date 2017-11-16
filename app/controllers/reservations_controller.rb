class ReservationsController < ApplicationController
  def all
    @reservation = Reservation.includes(:customer)
  end

  def new
    @customers = Customer.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
  end

  def edit
    @customers = Customer.all
  end

  def update
    reservation = Reservation.find_by(id: params[:reservation_id])
    reservation.update_params(reservation_params)
    redirect_to '/reservations'
  end

  private
  def reservation_params
    params.require(:reservation).permit(:customer_id, :room, :start_date, :end_date, :bill)
  end
end
