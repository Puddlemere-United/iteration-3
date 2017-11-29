
# needs to be renamed with user
class CustomerProductsController < ApplicationController

	########################
	# prob not needed
	def show
    end

	#Brings back customer created products
	def index
    	@products = Product.where(:user_id => session[:user_id]).where(:active => 't')
	end


end
