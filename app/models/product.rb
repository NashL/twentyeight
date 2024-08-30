class Product < ApplicationRecord
  has_many :product_restrictions
  has_many :restricted_states, through: :product_restrictions, source: :state

  def minimum_age_in_state(state)
    restriction = product_restrictions.find_by(state: state)
    restriction&.minimum_age || state.minimum_age
  end
end
