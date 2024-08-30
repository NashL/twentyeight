class State < ApplicationRecord
  has_many :product_restrictions
  has_many :restricted_products, through: :product_restrictions, source: :product

end
