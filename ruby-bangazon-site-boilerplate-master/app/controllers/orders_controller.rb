class OrdersController < ApplicationController

    before_action :require_user

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
        @select_payment = PaymentType.find(params[:user_id])
        @select_payment = Order.update(@order, params[:paymet_type_id])
        @select_payment.save
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
