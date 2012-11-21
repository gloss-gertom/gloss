# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#Seed data for Gloss HomeStore
#
#NOTE: All data is DELETED then reloaded. New() method is used in order to be able to specify primary key values.
#
########################################
Category.delete_all

cat=Category.new
cat.id = 1
cat.category_name = "Audio"
cat.save

cat=Category.new
cat.id = 2
cat.category_name = "Furniture"
cat.save

cat=Category.new
cat.id = 3
cat.category_name = "PC"
cat.save

cat=Category.new
cat.id = 4
cat.category_name = "TV"
cat.save



