class AddMinimumAgeToProductRestrictions < ActiveRecord::Migration[6.1]
  def change
    add_column :product_restrictions, :minimum_age, :integer
  end
end
