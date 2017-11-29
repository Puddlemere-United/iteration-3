class ProductTypesController < ApplicationController


    def index
		@product_types = ProductType.all
        @products_count = Product.group(:product_type_id).count
    end
  
    def create
	end 
	
    def show
    	@product_types = ProductType.find(params[:id])
    end 

    def new
    	@product_type = ProductType.new
    end


    private
        def product_params
            params.permit(:product_type) 
        end

end
