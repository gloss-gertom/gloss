class Product < ActiveRecord::Base
  attr_accessible :allocated_qty, :category_id, :current_level, :description, :featured_product, :image_url, :name, :on_order_qty, :qty_per_unit, :reorder_level, :special_offer, :unit_price, :unit_type_id

  belongs_to :category
  belongs_to :unit_type
  has_many :line_items
  has_many :orders, through: :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Sorry, there are Line Items present')
      return false
    end
  end

  def self.search(search_query)
    
    if search_query
      find(:all,:conditions => ['description LIKE ?', "%#{search_query}%"])
    else
      redirect_to root_path, notice: 'Search Results: No items found.'
    end

  end
end
