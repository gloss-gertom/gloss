class Category < ActiveRecord::Base
  attr_accessible :category_name

  has_many :products, dependent: :destroy

  def to_s
    category_name
  end
end
