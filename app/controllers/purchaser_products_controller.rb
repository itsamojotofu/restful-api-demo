class PurchaserProductsController < ApplicationController
  def create
    @purchaser_product =PurchaserProduct.create(purchaser_product_params)
    if @purchaser_product.save
      render json: { status: 'success', data: @purchaser_product }
    else
      render json: { status: 'error', data: @purchaser_product.errors }
    end
  end

  private

  def purchaser_product_params
    params.require(:purchaser_product).permit(:purchaser_id, :product_id)
  end
end


