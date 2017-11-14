class Customer < ApplicationRecord
	has_many :payment_types
	has_many :orders
end
