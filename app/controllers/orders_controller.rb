# Class based on orders controller created in Agile web development   C.12
class OrdersController < ApplicationController

  def new
    @cart = current_cart
    # Check that we have something in the cart
    # Don't want customer navigating to checkout
    # and creating an empty cart
    if @cart.line_items.empty?
      redirect_to page_home_path, notice: "Your cart is empty"
      return
    end

    @order = Order.new

  end

  def create
    # Create a new order object, collect all the form data related
    # to order
    @order = Order.new(params[:order])
    # now we will add in the items stored in the cart
    # into the order
    @order.add_line_items_from_cart(current_cart)

    # save the order to the database
    if @order.save
      # If the order succeeds, delete the cart from the session
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      #OrderDetails.received(@order).deliver
     # redirect_to page_home_path, :notice => "Thank you for your Order"
      render action: "thank_you"
    else
      # if the save fails for some reason
      # redisplay the checkout form with the current cart
      @cart = current_cart
      render action: "new"
    end
  end

  def thank_you
    @page_title = "Displaying order ##{params[:id]}"
    @order = Order.find(params[:id])

  end

end
