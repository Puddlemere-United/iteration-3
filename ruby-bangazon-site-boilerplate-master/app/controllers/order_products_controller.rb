class OrdersProductsController < ApplicationController
    def index
    end

    private
    def order_products_params
        params.require(:order_products).permit(:order_id, :product_id)
    end
end