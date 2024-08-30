class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.string :email
      t.date :date_of_birth
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
