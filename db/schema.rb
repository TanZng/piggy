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

ActiveRecord::Schema.define(version: 2021_05_27_022244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories_category_expenses", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.string "icon"
    t.bigint "wallet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wallet_id"], name: "index_categories_category_expenses_on_wallet_id"
  end

  create_table "categories_category_incomes", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.string "icon"
    t.bigint "wallet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wallet_id"], name: "index_categories_category_incomes_on_wallet_id"
  end

  create_table "financial_objects_expenses", force: :cascade do |t|
    t.string "description"
    t.decimal "currency"
    t.bigint "category_id", null: false
    t.bigint "payment_method_id", null: false
    t.bigint "wallet_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_financial_objects_expenses_on_category_id"
    t.index ["payment_method_id"], name: "index_financial_objects_expenses_on_payment_method_id"
    t.index ["wallet_id"], name: "index_financial_objects_expenses_on_wallet_id"
  end

  create_table "financial_objects_goals", force: :cascade do |t|
    t.string "description"
    t.decimal "currency"
    t.date "due_date"
    t.bigint "wallet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wallet_id"], name: "index_financial_objects_goals_on_wallet_id"
  end

  create_table "financial_objects_incomes", force: :cascade do |t|
    t.string "description"
    t.decimal "currency"
    t.bigint "category_id", null: false
    t.bigint "wallet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_financial_objects_incomes_on_category_id"
    t.index ["wallet_id"], name: "index_financial_objects_incomes_on_wallet_id"
  end

  create_table "financial_objects_payment_methods", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "wallet_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wallet_id"], name: "index_financial_objects_payment_methods_on_wallet_id"
  end

  create_table "users_wallets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "categories_category_expenses", "users_wallets", column: "wallet_id"
  add_foreign_key "categories_category_incomes", "users_wallets", column: "wallet_id"
  add_foreign_key "financial_objects_expenses", "categories_category_expenses", column: "category_id"
  add_foreign_key "financial_objects_expenses", "financial_objects_payment_methods", column: "payment_method_id"
  add_foreign_key "financial_objects_expenses", "users_wallets", column: "wallet_id"
  add_foreign_key "financial_objects_goals", "users_wallets", column: "wallet_id"
  add_foreign_key "financial_objects_incomes", "categories_category_incomes", column: "category_id"
  add_foreign_key "financial_objects_incomes", "users_wallets", column: "wallet_id"
  add_foreign_key "financial_objects_payment_methods", "users_wallets", column: "wallet_id"
end
