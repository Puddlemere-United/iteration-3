
# needs to be renamed with user
class UserProductsController < ApplicationController

	#Brings back user created products
	def index
    	@products = Product.where(:user_id => session[:user_id]).where(:active => 't')
	end

end
