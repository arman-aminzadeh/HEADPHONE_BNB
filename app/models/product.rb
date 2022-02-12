class Product < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description, :address],
    using: {
      tsearch: { prefix: true }
    }
end
