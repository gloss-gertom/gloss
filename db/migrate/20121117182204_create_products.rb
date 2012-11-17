class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :unit_type
      t.float :qty_per_unit
      t.float :unit_price
      t.integer :current_level
      t.integer :reorder_level
      t.integer :on_order_qty
      t.integer :allocated_qty
      t.string :image_url
      t.boolean :special_offer
      t.boolean :featured_product
      t.integer :category_id

      t.timestamps
    end
  end
end
