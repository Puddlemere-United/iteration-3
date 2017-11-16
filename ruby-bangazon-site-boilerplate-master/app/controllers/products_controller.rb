

class ProductsController < ApplicationController


	def show
	    @products = Product.find(params[:id])
	end
	
	def index
	end

	def new
		@product = Product.new
	end

	def create
		# render plain: params[:article].inspect
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end


	private

		def product_params
			params.require(:product).permit(:title, :description, :price, :quantity, :sold, :local_delivery, :product_type_id)
		end

end



