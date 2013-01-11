class PageController < ApplicationController

 
  def home
  # repeating myself here, need to rewrite
  # getting featured and special offers as two queries
  # need to refine down to one query
  # and then do a conditional check and return
  # @features = Product.where(:featured_product => true).limit(3)
  # @specials = Product.where(:special_offer => true).limit(4)

  # one query returning both featured and special offers
  @offers = Product.where("featured_product = ? or special_offer = ?", true, true)

  end

  def about
  end

  def contact
  end

  def register
  end

  def help
  end

  def services
  @popular = Product.where("featured_product = ? or special_offer = ?", true, true)

  end
end
