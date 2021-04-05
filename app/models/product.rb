class Product < ApplicationRecord
  has_many :purchaser_products
  has_many :purchasers, through: :purchaser_products
end
