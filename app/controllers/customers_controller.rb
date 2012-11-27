class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to page_home_path, :notice => "Account Created"
    else
      #TODO Need to redirect
      render :action => 'page/about'
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
end
