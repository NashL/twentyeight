class CreateProductRestrictions < ActiveRecord::Migration[6.1]
  def change
    create_table :product_restrictions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true
      t.boolean :restricted, null: false, default: true

      t.timestamps
    end
  end
end
