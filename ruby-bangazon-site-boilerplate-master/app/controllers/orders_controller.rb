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
        @order = Order.find_or_create_by!(user_id: session[:user_id], payment_type_id: nil)
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

    #This finds the order and updates based on order params, redirecting to add the payment type to the order, thus completing the order
    def update
        @order = Order.where(:user_id => session[:user_id], :payment_type => nil).last
        @order.update(order_params)
        inventory_to_sold(@order)
        redirect_to orders_path
    end


    def test
        puts "test test test"
    end 
    
    #inserts the payment type selection into order table
    def edit 
        @payment_types = PaymentType.where(:user_id => session[:user_id])
        @order = Order.where(:user_id => session[:user_id], :payment_type => nil).last
    end
    
    #deletes products from order and order
    #show.html.erb
    def delete_product_from_order
        @shopping_cart = Order.where(:user_id => session[:user_id], :payment_type => nil).last
        puts params
        @destroy_product = Product.find(params[:format])
        @shopping_cart.products.delete(@destroy_product)
        redirect_to shopping_cart_path
    end

    # deletes shopping cart
    #show.html.erb
    def destroy
        @order = Order.find_by(params[:id])
        @order.products.destroy_all
        @order.destroy
        redirect_to product_types_path
    end




    private

        def order_params
            params.require(:order).permit(:user_id, :payment_type_id, :id)
        end

        def product_params
            params.require(:product).permit(:id)
        end

        def inventory_to_sold(order)
            
            order.products.each do |product|    
                product = Product.find(product.id)           
                product_quantity = product.quantity - 1
                product_sold = product.sold + 1  
                product.update_attributes({quantity: product_quantity, sold: product_sold})
            end
        end

end
