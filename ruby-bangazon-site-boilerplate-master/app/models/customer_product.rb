class CustomerProduct < ApplicationRecord
	has_many :payment_types
	has_many :orders

	def add_customer

	end

	def get_single_customer

	end

end
