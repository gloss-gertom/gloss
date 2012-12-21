class CartsController < InheritedResources::Base
  before_filter :authorise_customer
  protect_from_forgery

  def index
      redirect_to root_path, notice: 'Cart EMPTIED'
  end

  def show
    begin
      @cart = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_path, notice: 'Invalid cart'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @cart }
      end
    end
  end

  protected

    def authorise_customer
      unless Customer.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in to purchase"
      end
    end


end
