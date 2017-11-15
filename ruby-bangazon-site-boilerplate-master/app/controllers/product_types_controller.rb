class ProductTypesController < ApplicationController
  
  def create
  end

  def show
  	@product_types = ProductType.all
  end

  def new
  	@product_type = ProductType.new
  end

  def index
  end

end
