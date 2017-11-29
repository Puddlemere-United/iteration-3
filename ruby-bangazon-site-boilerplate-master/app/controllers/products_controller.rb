class ProductsController < ApplicationController

	
	#for search by fuzzy term
	def index
		@products = if params[:term]
			Product.where('title LIKE ?', "%#{params[:term]}%")
		else
			@products = Product.all
		end
	end

	# pulls back one product
	def show
	    @product = Product.find(params[:id])
	end

	#User can edit added product
	def edit
		@product = Product.find(params[:id])
	end

	#product table updated by user
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to customer_products_path
		else 
			render 'edit'
		end
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



	def destroy
		@product = Product.find(params[:id])
		@product.active = false
		@product.save

		redirect_to customer_products_path
	end


	private

		def product_params

			params.require(:product).permit(:title, :description, :price, :quantity, :sold, :local_delivery, :product_type_id, :user_id, :image, :city_sold_from, :term)

		end

end



