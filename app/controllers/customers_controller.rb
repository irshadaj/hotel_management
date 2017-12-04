class CustomersController < ApplicationController
  def all
    @customers = Customer.all
  end

  def new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to '/customers/all'
    else
      logger.error(@customer.errors.inspect)
      flash.now[:alert] = 'Could not create customer profile'
      render '/customer/all'
    end
  end

  private
  def customer_params
    params.require(:customer).require(:name).permit(:address, :credit_name, :credit_num, :credit_exp, :credit_cvv)
  end
end
