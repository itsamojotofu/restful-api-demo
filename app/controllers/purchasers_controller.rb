class PurchasersController < ApplicationController
  def create
    @purchaser = Purchaser.create!(purchaser_params)
    if @purchaser.save
      render json: { status: 'success', data: @purchaser }
    else
      render json: { status: 'error', data: @purchaser.errors }
    end
  end

  def show
    # set date-range for filtering
    start_date = params[:start_date]
    end_date = params[:end_date]
    # find all products purchased by the purchaser during the range
    purchaser = Purchaser.find(params[:id])
    products = purchaser.purchaser_products.where(purchase_date: start_date..end_date).order(purchase_timestamp: 'DESC')
    # formatting for response
    purchases = {}
    purchases[:purchases] = {}
    products.each do |product|
      product_name = {"product": product.product.name}
      purchases[:purchases].store(product[:purchase_date], [product_name])
    end

    render json: purchases
  end

  private

  def purchaser_params
    params.require(:purchaser).permit(:name)
  end
end