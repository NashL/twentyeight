class ProductRestriction < ApplicationRecord
  belongs_to :product
  belongs_to :state

  validates :restricted, inclusion: { in: [true, false] }
  validates :minimum_age, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
