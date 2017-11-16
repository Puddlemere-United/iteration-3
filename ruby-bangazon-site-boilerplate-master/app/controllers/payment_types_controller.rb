class PaymentTypesController < ApplicationController

	def index
		@payment_types = PaymentType.all
	end

	def new
		@payment_type = PaymentType.new
	end

	def create
		@payment_type = PaymentType.new(payment_type_params)
		if @payment_type.save
		redirect_to @payment_type
		else
			render 'new'
		end
	end

	def show
		@payment_type = PaymentType.find(params[:id])
	end

	def destroy
		@payment_type = PaymentType.find(params[:id])
        @payment_type.destroy
        redirect_to payment_type_path
	end

	private
    def payment_type
        params.require(:payment_type).permit(:title, :account_number)
    end
end
