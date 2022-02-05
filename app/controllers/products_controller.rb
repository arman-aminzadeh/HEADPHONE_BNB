class ProductsController < ApplicationController
  has_many :bookings, foreign_key: "reference_id"
  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    @user = current_user
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
    authorize @product
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.user = current_user
    @product.delete
    authorize @product
    redirect_to products_path
  end


  private

  def strong_params
    params.require(:product).permit(:name, :description, :address, :price_per_day)
  end
end
