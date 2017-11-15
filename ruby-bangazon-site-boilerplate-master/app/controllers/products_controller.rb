class ProductsController < ApplicationController
    

    def show
        @products = Product.find(params[:id])
    end

    private
        def product_params
            params.require(:product).permit(:title) 
        end

end
