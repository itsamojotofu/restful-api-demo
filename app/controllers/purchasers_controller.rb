class PurchasersController < ApplicationController
  def create
    @purchaser = Purchaser.create!(purchaser_params)
    if @purchaser.save
      render json: { status: 'success', data: @purchaser }
    else
      render json: { status: 'error', data: @purchaser.errors }
    end
  end

  private

  def purchaser_params
    params.require(:purchaser).permit(:name)
  end
end
