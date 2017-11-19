class CustomerProductsController < ApplicationController

	def show
    end

	def index
    	@products = Product.where(:user_id => session[:user_id]).where(:active => 't')
	end


end
