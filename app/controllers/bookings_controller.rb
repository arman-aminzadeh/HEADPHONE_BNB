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
        #raise
        @booking = Booking.new(booking_params)
        @product = Product.find(params[:product_id])
        @user = current_user
        @booking.product = @product
        @booking.user = @user
        start_date = DateTime.parse(params[:booking][:start_date]).to_date
        end_date = DateTime.parse(params[:booking][:end_date]).to_date

        diuration = end_date.jd - start_date.jd + 1
        @booking.total_price = @product.price_per_day * diuration
        authorize @booking
        if @booking.save
            redirect_to @booking
        else
            render :new
        end
        
    end
    
    def update

    end
    
    def destroy
        
    end

    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date)
    end
end
