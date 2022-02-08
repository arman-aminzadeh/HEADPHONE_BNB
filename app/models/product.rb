class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  #pg_search
end
