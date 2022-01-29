class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(strong_params)
    @product.user = current_user
    @product.save
    redirect_to product_path(@product)
  end

  private

  def strong_params
    params.require(:product).permit(:name, :description, :address, :price_per_day)
  end
end
