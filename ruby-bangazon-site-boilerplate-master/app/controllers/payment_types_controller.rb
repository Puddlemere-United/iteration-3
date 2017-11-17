class PaymentTypesController < ApplicationController

	
	def new
		@payment_type = PaymentType.new
	end
	
	def create
		@payment_type = PaymentType.new(payment_type)
		@payment_type.user_id = session[:user_id]
		if @payment_type.save
			redirect_to payment_type
		else
			render 'new'
		end
	end
	
	def index
		@payment_types = PaymentType.where(:user_id => session[:user_id])
	end

	# This shows saved payment types for selection to complete open order
	# Needs to show in drop down or check boxes
	# def show
	# 	@payment_type = PaymentType.find(params[:id])
	# end

	def destroy
		@payment_type = PaymentType.find(params[:id])
        @payment_type.destroy
        redirect_to payment_types_path
	end

	private
    def payment_type
        params.require(:payment_type).permit(:title, :account_number, :user_id)
    end
end
