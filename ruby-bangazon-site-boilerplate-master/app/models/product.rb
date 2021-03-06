class Product < ApplicationRecord
	belongs_to :product_type
	has_many :orders_products
	has_many :orders, through: :order_products

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	
end
