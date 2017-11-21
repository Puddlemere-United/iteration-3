class OrdersController < ApplicationController

    before_action :require_user

    def new
    end

    def create
    end

    #create order when first product added
    #will be a product partial, check with nora
    def add_to_cart
        puts "INSIDE ADD TO CART"
        puts User.find(session[:user_id]).payment_type.first.account_number
        @order = Order.find_or_create_by!(user_id: session[:user_id])
            # order.payment_type_id = User.find(session[:user_id]).payment_type.first.id
        @order.errors.full_messages
        @order_product = OrderProduct.new(params.permit(:product_id))
        puts "hello"
        puts @order_product.id
        @order_product.order_id = @order.id
        @order_product.save
        puts @order_product.errors.full_messages
        redirect_to shopping_cart_path(@order)
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
        redirect_to orders_path
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
            params.permit(:order, :payment_type_id, :product)
        end

end
