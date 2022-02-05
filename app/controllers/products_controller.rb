class ProductsController < ApplicationController

  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
    @booking = Booking.new
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(strong_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
        authorize @product
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    @product.update(strong_params)
    @product.save
    authorize @product
    redirect_to product_path(@product)
  end

  private

  def strong_params
    params.require(:product).permit(:name, :description, :address, :price_per_day)
  end
end
