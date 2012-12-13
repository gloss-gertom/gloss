class CustomersController < ApplicationController
  # Want a reference to the currently logged in user before we run the edit/update process
  # getting this via the session[:user_id]
  before_filter :current_customer, :only => [ :edit, :show]
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
   # Find the currently logged in user by its id, use the returned data
   # populate the edit form fields
     @customer = Customer.find_by_id(@current_customer)
  end

  def update
    # Find customer object using edit form parameters
    @customer = Customer.find_by_id(params[:id])
    # Update the customer
    if @customer.update_attributes(params[:customer])
      #TODO if successful, redirect to the show action
      redirect_to(:action => 'show', :id =>@customer.id)
      #redirect_to page_home_path, :notice => "Account Updated"
    else
      # if update fails, re-display the form so customer can fix problem
      render('edit')
    end
  end

  def show
    @customer = Customer.find_by_id(@current_customer)
    @first_name = @customer.first_name
    @last_name = @customer.last_name
    @name = "#{@first_name}  #{@last_name} "
  end

  def delete
  end
end
