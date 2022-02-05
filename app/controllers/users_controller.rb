class UsersController < ApplicationController
  has_many :bookings, foreign_key: "reference_id"
end
