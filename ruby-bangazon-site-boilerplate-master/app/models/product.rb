class Product < ApplicationRecord
	has_and_belongs_to_many :orders
	belongs_to :product_type
end
