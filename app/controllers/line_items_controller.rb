class LineItemsController < InheritedResources::Base
  def create
    #@cart = current_cart

    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i

    @line_item = @cart.add_product(product.id,quantity)
    @line_item.unit_price = product.unit_price
  

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart,
                                  notice: 'Line item was successfully created.' }
        format.json { render json: @line_item,
                             status: :created, location: @line_item }
      else
        format.html { render action: "new" }
        format.json { render json: @line_item.errors,
                             status: :unprocessable_entity }
      end
    end
  end

  def index
    redirect_to cart_path(session[:cart_id]), notice: 'Line item was successfully DELETED.'
  end

  def show
    redirect_to cart_path(session[:cart_id]), notice: 'Line item was successfully UPDATED.'
  end
 # def update
 #   @cart = current_cart
 #
 #   prod = 199
 #   #qty = 2222
 #   product = Product.find(prod)
 #   quantity = (params[:line_item.quantity].to_i)
 #
 #   Rails.logger.debug "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
 #   Rails.logger.debug quantity
 #   Rails.logger.debug product
 #   Rails.logger.debug "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
 #
 #   @line_item = @cart.update_product(product.id,quantity)
 #   @line_item.product = product
 #
 #   respond_to do |format|
 #     if @line_item.save
 #       format.html { redirect_to @line_item.cart,
 #                                 notice: 'Cart line item was successfully UPDATED.' }
 #       format.json { render json: @line_item,
 #                            status: :created, location: @line_item }
 #     else
 #       format.html { render action: "new" }
 #       format.json { render json: @line_item.errors,
 #                            status: :unprocessable_entity }
 #     end
 #   end
 # end

end
