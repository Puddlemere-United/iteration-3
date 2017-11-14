class Order < ApplicationRecord
	belongs_to :customer
	belongs_to :payment_type
	has_and_belongs_to_many :products

end
