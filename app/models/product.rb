class Product < ActiveRecord::Base
  attr_accessible :allocated_qty, :category_id, :current_level, :description, :featured_product, :image_url, :name, :on_order_qty, :qty_per_unit, :reorder_level, :special_offer, :unit_price, :unit_type

  belongs_to :category
end
