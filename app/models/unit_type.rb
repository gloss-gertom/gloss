class UnitType < ActiveRecord::Base
  attr_accessible :unit_type

  has_many :products, dependent: :destroy

  def to_s
    unit_type
  end
end
