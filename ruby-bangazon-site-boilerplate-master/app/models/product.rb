class Product < ApplicationRecord
	has_and_belongs_to_many :orders
	belongs_to :product_type
	mount_uploader :image, ImageUploader

	def show
	end

	def add_product
	end

	# def get_all_seller_products
	# end

	# def search_all_products
	# end

	# def get_single_product
	# end

	# def get_product_type_three_products
	# end

	# def get_all_product_types
	# end

	def update_single_product
	end

	def name
	end

	def image 
	end

	
end
