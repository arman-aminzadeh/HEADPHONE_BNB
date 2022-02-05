class BookingsController < ApplicationController
  belongs_to :user, foreign_key: "user_id"
  has_many :products, foreign_key: "reference_id"
end
