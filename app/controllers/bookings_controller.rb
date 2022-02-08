class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @user = current_user
        @product = Product.find(params[:product_id])  
        raise
        authorize @booking
    end
    
    def create
        raise
        @booking = Booking.new(booking_params)
        @product = Product.find(params[:booking][:product_id])
        @user = User.find(params[:booking][:user_id])
        @booking
        
    end
    
    def update

    end
    
    def destroy
        
    end

    private
    def booking_params
        @booking = Booking.find(params[:id])
    end
end
