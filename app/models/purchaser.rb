class Purchaser < ApplicationRecord
  has_many :purchaser_products, dependent: :destroy
  has_many :products, through: :purchaser_products
end
