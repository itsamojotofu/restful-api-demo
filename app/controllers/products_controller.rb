class ProductsController < ApplicationController
  # before_action :set_purchaser only: [:show]

  def create
    @product = Product.create!(product_params)
    if @product.save
      render json: { status: 'success', data: @product }
    else
      render json: { status: 'error', data: @product.errors }
    end
  end

  # def show
  #   @products = @purchaser.purchaser_products.order(purchase_timestamp: 'DESC')
  #   render json: @products
  # end

  private

  def product_params
    params.require(:product).permit(:name)
  end

  # def set_purchaser
  #   @purchaser = Purchaser.find(params[:id])
  # end
end
