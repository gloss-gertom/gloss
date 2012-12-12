class SessionsController < ApplicationController

  def create
    if customer = Customer.authenticate(params[:username], params[:password])
          session[:user_id] = customer.id
          #storing username here for convience, so don't have to go back to database
          session[:username] = customer.username
          redirect_to root_path, :notice => "You are now logged in"
    else
      #TODO Need to look at the redirect for login Failure
      redirect_to customers_new_path   :notice => "Invalid login/password"
    end
  end

  def destroy
    # reset_session
    # remove user_id, if they have a user_id they are logged in, 
    # removing it logs them out
    session[:user_id] = nil
    
    session[:username] = nil
    redirect_to root_path, :notice =>"You successfully logged out"
  end

end
