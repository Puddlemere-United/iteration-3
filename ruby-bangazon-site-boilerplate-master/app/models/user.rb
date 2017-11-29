class User < ApplicationRecord
  has_secure_password
  has_many :payment_type

  validates_uniqueness_of :email
end
