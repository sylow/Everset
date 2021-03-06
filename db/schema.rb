# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_25_201755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "price"
    t.decimal "closing_costs"
    t.decimal "repair_costs"
    t.decimal "after_repair_value"
    t.decimal "rent_monthly"
    t.decimal "property_upkeep_monthly"
    t.decimal "insurance_monthly"
    t.decimal "hoa_fees_monthly"
    t.decimal "utilities_monthly"
    t.decimal "value_growth_percent"
    t.decimal "property_taxes_percent"
    t.decimal "inflation_rate_percent"
    t.decimal "management_fees_percent"
    t.decimal "average_tenant_stay_yrs"
    t.decimal "average_vacancy_length_months"
    t.decimal "earnings_reinvestment_percent"
    t.decimal "downpayment_percent"
    t.decimal "interest_rate_percent"
    t.decimal "property_mortgage_insurance_monthly"
    t.decimal "loan_term_length_years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street_address"
    t.string "appartment_number"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "country"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_subscriptions_on_product_id"
    t.index ["user_id", "product_id"], name: "index_subscriptions_on_user_id_and_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
