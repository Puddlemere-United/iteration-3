class Order < ApplicationRecord
	belongs_to :user
	belongs_to :payment_type
	has_many :product, through: :orders_products

	def add_order
	end

	def	update_order
	end

	def complete_order
	end

	def	destroy_order
	end

	def destroy_product_from_order
	end
end
