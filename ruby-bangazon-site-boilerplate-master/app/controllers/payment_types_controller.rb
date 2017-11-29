class PaymentTypesController < ApplicationController

	# CASEY what does this do?
	def new
		@payment_type = PaymentType.new
	end
	
	# User can add payment type via form
	def create
		@payment_type = PaymentType.new(payment_type)
		@payment_type.user_id = session[:user_id]
		if @payment_type.save
			redirect_to payment_type
		else
			render 'new'
		end
	end
	
	# shows added payment types by user
	# user profile
	def index
		@payment_types = PaymentType.where(:user_id => session[:user_id])
	end

	# This shows saved payment types for selection to complete open order based on user
	# Needs to show in drop down or check boxes
	# user order
	def show
		@payment_types = PaymentType.where(:user_id => session[:user_id])
	end

	# Deletes individual payment types from user
	def destroy
		@payment_type = PaymentType.find(params[:id])
        @payment_type.destroy
        redirect_to payment_types_path
	end

	private
	# params required to write to table
    def payment_type
        params.require(:payment_type).permit(:title, :account_number, :user_id)
    end
end
