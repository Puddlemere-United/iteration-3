class ProductsController < ApplicationController


	def show
	    @product = Product.find(params[:id])
	end
	
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		# render plain: params[:article].inspect
		@product = Product.new(product_params)
		@product.user_id = session[:user_id]

		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end


	private

		def product_params
			params.require(:product).permit(:title, :description, :price, :quantity, :sold, :local_delivery, :product_type_id, :user_id, :image, :city_sold_from)
		end

end



