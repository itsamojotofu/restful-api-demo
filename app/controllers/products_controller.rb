class ProductsController < ApplicationController
  def create
    @product = Product.new(name: params[:name])

    if @product.save
      products = Product.all
      render json: products, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end
end
