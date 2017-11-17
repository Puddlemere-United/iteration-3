class CustomerProductsController < ApplicationController

	def show
    end

	def index
    	@products = Product.where(:user_id => session[:user_id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to customer_products_path
	end

end
