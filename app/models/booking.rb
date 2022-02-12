class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validate :end_date_after_start_date
  before_create :set_total_price

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, 'must not be before start date')
    end
  end

  def duration
    (end_date - start_date).to_i
  end

  def set_total_price
    total_price = product.price_per_day * duration
    return total_price
  end
end
