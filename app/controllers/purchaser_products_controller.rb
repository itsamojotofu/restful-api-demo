class PurchaserProductsController < ApplicationController
  def create
    datetime = Time.at(params[:purchase_timestamp]).to_date
    @purchaser_product =PurchaserProduct.create(purchaser_id: params[:purchaser_id], product_id: params[:product_id], purchase_timestamp: params[:purchase_timestamp], purchase_date: datetime)
    if @purchaser_product.save
      render json: { status: 'success', data: @purchaser_product }
    else
      render json: { status: 'error', data: @purchaser_product.errors }
    end
  end
end
