class ProductTypesController < ApplicationController

    def show
        @product_types = ProductType.find(params[:id])
    end

    private
        def product_params
            params.require(:product_types).permit(:product_type) 
        end
end
