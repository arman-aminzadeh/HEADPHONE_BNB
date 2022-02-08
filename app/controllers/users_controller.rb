class UsersController < ApplicationController
    def show
        # retrive information about user
        @user = current_user
        # show boookings dates
        @user.booking_id = @bookings
        # show total price
        
    end
end
