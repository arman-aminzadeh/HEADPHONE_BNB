class ProductsController < ApplicationController

  def index
    @products = policy_scope(Product).order(created_at: :desc)

    if params[:query].present?
      @products = Product.search_by_name_and_description(params[:query])
    else
      @product = Product.all
    end

    @markers = @products.geocoded.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude,
        info_window: render_to_string(partial: "info_window", locals: { product: product })
      }
    end
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
    @booking = Booking.new
  end

  def new
    @product = Product.new
    @user    = current_user
    @review  = Review.new 
    authorize @product
  end

  def create
    @product      = Product.new(strong_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
    authorize @product
  end

  def edit
    @product      = Product.find(params[:id])
    @product.user = current_user
    authorize @product
  end


  def update
    @product = Product.find(params[:id])
    @product.update(strong_params)
    @product.save

  end
  def destroy
    @product      = Product.find(params[:id])
    @product.user = current_user
    @product.delete

    authorize @product
    redirect_to products_path
  end

  private

  def strong_params

    params.require(:product).permit(:name, :description, :address, :price_per_day, :latitude, :longitude, :photo)

  end
end
