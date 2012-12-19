class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order

  attr_accessible :cart_id, :product_id, :quantity

  def total_price
    product.unit_price * quantity
  end

  def total_items

  end
end
