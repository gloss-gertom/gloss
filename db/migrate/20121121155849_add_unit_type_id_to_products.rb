class AddUnitTypeIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :unit_type_id, :integer
  end
end
