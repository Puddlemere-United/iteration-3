require 'product_types_controller.rb'

class ProductsController < ApplicationController
	
	def index
	end

	def show
		@product_types_controller = ProductTypesController.new	
		@product_types = @product_types_controller.show
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end


	private

		def product_params
			params.require(:product).permit(:title, :description, :price, :quantity, :sold, :local_delivery)
		end
end



