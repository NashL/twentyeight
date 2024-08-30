class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name, null: false
      t.string :abbr, null: false
      t.boolean :services_offered, null: false, default: false
      t.integer :minimum_age, null: false

      t.timestamps
    end
  end
end
