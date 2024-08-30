# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_08_30_133722) do

  create_table "patients", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.date "date_of_birth"
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_patients_on_state_id"
  end

  create_table "product_restrictions", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "state_id", null: false
    t.boolean "restricted", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "minimum_age"
    t.index ["product_id"], name: "index_product_restrictions_on_product_id"
    t.index ["state_id"], name: "index_product_restrictions_on_state_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "identifier"
    t.integer "quantity"
    t.decimal "price"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name", null: false
    t.string "abbr", null: false
    t.boolean "services_offered", default: false, null: false
    t.integer "minimum_age", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "patients", "states"
  add_foreign_key "product_restrictions", "products"
  add_foreign_key "product_restrictions", "states"
end
