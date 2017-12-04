# Reservations
class ReservationsController < ApplicationController
  def all
    @reservation = Reservation.includes(:customer)
  end

  def new
    @customers = Customer.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save!
    redirect_to '/reservations/all'
  end

  def edit
    @customers = Customer.all
  end

  def update
    reservation = Reservation.find_by(id: params[:reservation_id])
    reservation.update(room: params[:room])
    reservation.update(start_date: params[:start_date])
    reservation.update(end_date: params[:end_date])
    redirect_to '/reservations'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:customer_id, :room, :start_date, :end_date)
  end
end
