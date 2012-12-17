class CustomersController < ApplicationController
  def new
    @cart = current_cart
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to page_home_path, :notice => "Account Created"
    else
      #TODO Need to re-think what and where notice is displayed
      redirect_to customers_new_path, :notice => "Registration Failed"
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
end
