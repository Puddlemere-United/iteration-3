class PaymentTypesController < ApplicationController

	def new
		@payment_type = PaymentType.new
	end

	def show
	 	@payment_types = PaymentType.all
	end
end
