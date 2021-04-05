class PurchaserProductsController < ApplicationController
  def create
    PurchaserProduct.create(purchaser_id: params[:purchaser_id], product_id: params[:product_id])
  end
end
