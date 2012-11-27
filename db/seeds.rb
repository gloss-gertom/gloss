# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#Seed data for Gloss HomeStore
#
###############################################################
Category.destroy_all

Category.create({category_name: "Audio"})
Category.create({category_name: "Furniture"})
Category.create({category_name: "PC"})
Category.create({category_name: "TV"})

UnitType.destroy_all
UnitType.create({unit_type: "Each"})
UnitType.create({unit_type: "Box"})
UnitType.create({unit_type: "Metres"})
###############################################################
Product.destroy_all

#AUDIO
prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "LogisDAB10"
prod.description = "Logis Digital Radio model 10"
prod.qty_per_unit = 1
prod.unit_price = 24.99
prod.current_level = 30
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "LogisDab10-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "LogisDAB12"
prod.description = "Logis Digital Radio model 12"
prod.qty_per_unit = 1
prod.unit_price = 34.99
prod.current_level = 30
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "LogisDab12-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "PureClassic"
prod.description = "Retro Style Radio"
prod.qty_per_unit = 1
prod.unit_price = 50.99
prod.current_level = 10
prod.reorder_level = 5
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "pureclassic-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "PureOne"
prod.description = "Retro Style Radio Digital"
prod.qty_per_unit = 1
prod.unit_price = 80.99
prod.current_level = 10
prod.reorder_level = 5
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "pureone-f.jpg"
prod.special_offer = false
prod.featured_product = true
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Roberts R9928"
prod.description = "Roberts Radio"
prod.qty_per_unit = 1
prod.unit_price = 70.99
prod.current_level = 5
prod.reorder_level = 5
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "robertsr9928-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Audio").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Roberts R9993"
prod.description = "Roberts Digital Radio"
prod.qty_per_unit = 1
prod.unit_price = 120.99
prod.current_level = 15
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "robertsr9993-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

#FURNITURE
prod = Product.new
prod.category_id = (Category.find_by_category_name("Furniture").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Buffer Chest"
prod.description = "3 drawer chest"
prod.qty_per_unit = 1
prod.unit_price = 150.99
prod.current_level = 105
prod.reorder_level = 60
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "buffer-chest-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Furniture").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Chardonnay bed"
prod.description = "Chardonnay bed - white"
prod.qty_per_unit = 1
prod.unit_price = 249.99
prod.current_level = 10
prod.reorder_level = 1
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "chardonnay-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Furniture").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Dressing Table"
prod.description = "4 drawer dressing table - white"
prod.qty_per_unit = 1
prod.unit_price = 10.99
prod.current_level = 10
prod.reorder_level = 5
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "dressingtable-f.jpg"
prod.special_offer = false
prod.featured_product = true
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("Furniture").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Carlos coffee table"
prod.description = "Carlos coffee table - beech"
prod.qty_per_unit = 1
prod.unit_price = 120.99
prod.current_level = 20
prod.reorder_level = 5
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "carlos-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

#PC
prod = Product.new
prod.category_id = (Category.find_by_category_name("PC").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "HP laptop"
prod.description = "Hewlett Packard Envy laptop"
prod.qty_per_unit = 1
prod.unit_price = 730.99
prod.current_level = 80
prod.reorder_level = 15
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "hpenvy-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("PC").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "HP laptop"
prod.description = "Hewlett Packard Envy laptop"
prod.qty_per_unit = 1
prod.unit_price = 730.99
prod.current_level = 80
prod.reorder_level = 15
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "hpenvy-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("PC").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Lenovo laptop"
prod.description = "Lenovo G580 laptop"
prod.qty_per_unit = 1
prod.unit_price = 730.99
prod.current_level = 80
prod.reorder_level = 15
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "lenovog580-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

#TV
prod = Product.new
prod.category_id = (Category.find_by_category_name("TV").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "LG TV"
prod.description = "LG 32 inch HD TV"
prod.qty_per_unit = 1
prod.unit_price = 524.99
prod.current_level = 39
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "lghd32-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("TV").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "LG TV"
prod.description = "LG 42 inch HD TV"
prod.qty_per_unit = 1
prod.unit_price = 624.99
prod.current_level = 205
prod.reorder_level = 80
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "lghd42-f.jpg"
prod.special_offer = false
prod.featured_product = true
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("TV").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "LG TV"
prod.description = "LG 47 inch HD TV"
prod.qty_per_unit = 1
prod.unit_price = 724.99
prod.current_level = 101
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "lghd47-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("TV").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Samsung TV"
prod.description = "LG 32 inch HD TV"
prod.qty_per_unit = 1
prod.unit_price = 524.99
prod.current_level = 75
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "samsunghd32-f.jpg"
prod.special_offer = true
prod.featured_product = false
prod.save

prod = Product.new
prod.category_id = (Category.find_by_category_name("TV").id)
prod.unit_type_id = (UnitType.find_by_unit_type("Each").id)
prod.name = "Samsung TV"
prod.description = "LG 40 inch HD TV"
prod.qty_per_unit = 1
prod.unit_price = 564.99
prod.current_level = 19
prod.reorder_level = 10
prod.on_order_qty = 0
prod.allocated_qty = 0
prod.image_url = "samsunghd40-f.jpg"
prod.special_offer = false
prod.featured_product = false
prod.save