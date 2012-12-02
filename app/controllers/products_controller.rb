class ProductsController < ApplicationController
  def index
    #NOTE: search/find by category_name is temporary.
    #When Category navBar is amended to use Category Model then category.id will be known and passed to Products.
    #
    @category = Category.find_by_category_name(params[:category_name])

    @products = Product.find_all_by_category_id(@category.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
end
