class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @user = current_user
        authorize @booking
    end
    
    def create
        raise
        @booking = Booking.new(booking_params)
        @booking.user = @user
        
    end
    
    def update

    end
    
    def destroy
        
    end
end
