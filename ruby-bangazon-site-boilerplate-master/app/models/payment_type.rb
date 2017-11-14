class PaymentType < ApplicationRecord
	has_many :orders
	belongs_to :customer

	def add_payment_type

	end

	def get_all_customer_payment_types

	end

	def destroy_payment_type

	end
	
end
