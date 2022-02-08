class BookingsController < ApplicationController

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
        diuration = if (start_date.jd..end_date.jd).count
        @booking.total_price = @product.price_per_day * diuration
        authorize @booking
        if @booking.save
            redirect_to user_path(user)
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
