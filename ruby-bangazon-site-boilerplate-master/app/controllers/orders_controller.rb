class OrdersController < ApplicationController

    before_action :require_user

    def create
    end

    #create order when first product added
    #will be a product partial, check with nora
    def add_to_cart
        @order = Order.find_or_create_by!(user_id: session[:user_id], :payment_type => nil)
        @order_product = OrderProduct.new(@order, params[:product_id])
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
    @shopping_cart = Order.where(:user_id => session[:user_id], :payment_type => nil).last
    end

    def update
        @order = Order.where(:user_id => session[:user_id], :payment_type => nil).last
        # @order.payment_type_id = params[:payment_type_id]
        @order.update(order_params)
        redirect_to order_confirmation_path
    end
    
    def edit 
        @payment_types = PaymentType.where(:user_id => session[:user_id])
        @order = Order.where(:user_id => session[:user_id], :payment_type => nil).last
    end

    #deletes products from order and order
    #show.html.erb
    def destroy
    end


    private
    def order_params
        params.require(:order).permit(:user_id, :payment_type_id)
    end

end
