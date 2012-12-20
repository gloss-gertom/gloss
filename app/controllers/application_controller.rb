class ApplicationController < ActionController::Base
  before_filter :initalise_nullcart
  protect_from_forgery

  protected

  def initalise_nullcart
      @cart = current_cart  
  end

  # Returns the currently logged in customer or nil if there isn't one
  def current_customer
  	return unless session[:user_id]
  	@current_customer ||= Customer.find_by_id(session[:user_id])
  end

  #make current_customer available in templates as a helper
  helper_method :current_customer

  # Filter method to enforce a login requirement
  # Apply as a before_filter on any controller you want to protect
  def authenticate
  	logged_in? ? true : access_denied
  end

  # Predicate method to test for a logged in user
  def logged_in?
  	current_customer.is_a? Customer
  end

  # Make logged_in? available in templates as a helper
  helper_method :logged_in?

  def access_denied
  	redirect_to login_path, :notice => "Please log in to continue"
  	return false
  end


  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
  helper_method :current_cart



end
