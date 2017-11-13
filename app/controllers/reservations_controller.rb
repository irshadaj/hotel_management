class ReservationsController < ApplicationController
  def all
    @reservations = Reservation.all
  end

  def new
  end

  def create
    @customer = Customer.new(customer_params)
    @reservation = Reservation.new(reservation_params)
  end

  def edit
  end
end
