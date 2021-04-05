class ProductsController < ApplicationController
  def create
    @product = Product.create!(product_params)
    if @product.save
      render json: { status: 'success', data: @product }
    else
      render json: { status: 'error', data: @product.errors }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end
end
