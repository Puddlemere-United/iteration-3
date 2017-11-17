class OrdersController < ApplicationController

    before_action :require_user

    #create order when first product added
    #will be a product partial, check with nora
    def create
        @order = Order.find(params[:user_id])
        @order.user_id = session[:user_id]
		if @order.save
			redirect_to product
		else
			render 'new'
		end
        @order_product = OrderProduct.find(params[:id])
        @order = @order.order_products.create(order_params)
        @order_product.save
        redirect_to order_path(@order)
    end
    
    #displays order confirmation
    #index.html.erb
    def index

    end

    #show shopping cart with products by user id
    #show.html.erb
    def show
        @order = Order.find_by(params[:user_id])
        @order = OrderProduct.find_by(params[:order_id])
        # @order = 
    end

    #deletes products from order and order
    #show.html.erb
    def destroy
    end


    private
    def order_params
        params.require(:order).permit(:user_id, :payment_id)
    end

end
