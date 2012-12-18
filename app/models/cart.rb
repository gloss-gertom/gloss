class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id, quantity)
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += quantity
    else
      current_item = line_items.build(product_id: product_id, quantity: quantity)
    end
    current_item
  end

  def update_product(product_id, quantity)
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity = quantity
    else
      #throw error - to do
    end
    current_item
  end

  def total_quantity
    line_items.to_a.sum { |item| item.quantity}
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

  def total_items
    line_items.count
  end

  def testtotal_price
    total = 0
    line_items.each do |line_item|
      total += line_item.product.unit_price * line_item.quantity
    end
    total
  end
end
