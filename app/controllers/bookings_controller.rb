class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @product = Product.find(params[:product_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @product = Product.find(params[:product_id])
    @user = current_user
    @booking.product = @product
    @booking.user = @user
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
