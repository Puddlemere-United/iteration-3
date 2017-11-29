class ProductTypesController < ApplicationController

# Shows all product categories and how many products are in it
    def index
		@product_types = ProductType.all
        @products_count = Product.group(:product_type_id).count
    end
    
    #Shows product type by id- shows all products in single category
    def show
    	@product_types = ProductType.find(params[:id])
    end 

    private
        def product_params
            params.permit(:product_type) 
        end
end
