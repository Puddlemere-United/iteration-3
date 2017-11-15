class ProductsController < ApplicationController
	
	def index
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
	end

	private

		def product_params
			params.require(:product).permit(:title, :description, :price, :quantity, :sold, :local_delivery)
		end
end
