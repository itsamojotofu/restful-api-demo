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
    @purchaser = Purchaser.find(params[:id])
    @products = @purchaser.purchaser_products.where(purchase_date: params[:purchase_date]).order(purchase_timestamp: 'DESC')

    render json: @products
  end

  private

  def purchaser_params
    params.require(:purchaser).permit(:name)
  end
end