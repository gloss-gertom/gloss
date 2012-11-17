# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121117182421) do

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "unit_type"
    t.float    "qty_per_unit"
    t.float    "unit_price"
    t.integer  "current_level"
    t.integer  "reorder_level"
    t.integer  "on_order_qty"
    t.integer  "allocated_qty"
    t.string   "image_url"
    t.boolean  "special_offer"
    t.boolean  "featured_product"
    t.integer  "category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
