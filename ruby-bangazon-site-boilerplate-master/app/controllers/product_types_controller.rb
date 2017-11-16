class ProductTypesController < ApplicationController


    def index
		@product_types = ProductType.all
        @products_count = Product.group(:product_type_id).count
        # @products_limit = Product.select(:title).limit(3)
        # @products_all = Product.where(product_type_id: @product_types)

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
            params.require(:product_types).permit(:product_type) 
        end

end
