class CustomersController < ApplicationController
  def new
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
    @customer = Customer.find(params[:id])
  end

  def update
    # Find customer using submitted form parameters
    @customer = Customer.find(params[:id])
    # Save/update the customer details
    if @customer.update_attributes(params[:customer])
      # If update succeeds, redirect to the 
      # redirect_to(:action => 'show', :id => @customer.id)
      redirect_to page_home_path, :notice => "Account Updated"
    else
      # If save fails, redisplay the form so user cane fix problems
      render('edit')
    end
  end

  def delete
  end
end
