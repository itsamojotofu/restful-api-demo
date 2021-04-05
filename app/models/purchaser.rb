class Purchaser < ApplicationRecord
  has_many :purchaser_products
  has_many :products, through: :purchaser_products
end
