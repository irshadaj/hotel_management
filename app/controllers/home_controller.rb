class HomeController < ApplicationController
@role_id = 0
  def index
    render :home
  end

  def signin
    if params[:employee_id] == '1' && params[:password] == 'admin'
      @role_id = 1
      redirect_to '/dashboard'
    elsif params[:employee_id] == '2' && params[:password] == 'admin'
      @role_id = 2
      redirect_to '/dashboard'
    elsif params[:employee_id] == '3' && params[:password] == 'admin'
      @role_id = 3
      redirect_to '/dashboard'
    else
      render html: "<script>alert('Invalid credentials!')</script>".html_safe
    end
  end
end
