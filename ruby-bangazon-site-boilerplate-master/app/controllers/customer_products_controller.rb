class CustomerProductsController < ApplicationController

	def show
    end

	def index
    	@products = Product.where(:user_id => session[:user_id])
	end

	

end
