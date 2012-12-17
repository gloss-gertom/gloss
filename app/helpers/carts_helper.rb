module CartsHelper
  def cart_empty?
     if @cart
    link_to 'View Cart', cart_path(session[:cart_id])
     end

  end
end
