class RemoveUnitTypeFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :unit_type
  end

  def down
    add_column :products, :unit_type, :string
  end
end
