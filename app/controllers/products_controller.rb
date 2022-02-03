class ProductsController < ApplicationController
  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(strong_params)
    authorize @product
    @product.user = current_user
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(strong_params)
    redirect_to product_path(@product)
  end


  private

  def strong_params
    params.require(:product).permit(:name, :description, :address, :price_per_day)
  end
end
