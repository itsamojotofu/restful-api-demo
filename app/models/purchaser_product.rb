class PurchaserProduct < ApplicationRecord
  belongs_to :product
  belongs_to :purchaser

end
