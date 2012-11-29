class SessionsController < ApplicationController

  def create
    if customer = Customer.authenticate(params[:username], params[:password])
          session[:user_id] = customer.id
          redirect_to root_path, :notice => "You are now logged in"
    else
      #TODO Need to look at the redirect for login Failure
      redirect_to customers_new_path   :notice => "Invalid login/password"
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice =>"You successfully logged out"
  end

end
