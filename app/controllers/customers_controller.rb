class CustomersController < ApplicationController
  def all
    @customers = Customer.all
  end

  def new
  end

  def create
    @customer = Customer.new(customer_params)
  end
end
