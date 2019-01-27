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

ActiveRecord::Schema.define(version: 20190108020240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "slug"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.string "slug"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_customer_types_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "slug"
    t.string "status", default: "Enabled"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_type_id"
    t.string "email"
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "delivery_men", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_delivery_men_on_user_id"
  end

  create_table "deposits", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deposits_on_user_id"
  end

  create_table "movement_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_movement_types_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.bigint "order_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "reference"
    t.bigint "customer_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_permissions_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_categories_on_user_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_types_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "unity_id"
    t.float "unit_price"
    t.bigint "deposit_id"
    t.string "status"
    t.bigint "product_category_id"
    t.bigint "user_id"
    t.integer "reorder_threshold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deposit_id"], name: "index_products_on_deposit_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["unity_id"], name: "index_products_on_unity_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "purchase_order_details", force: :cascade do |t|
    t.bigint "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.bigint "purchase_order_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purchase_order_details_on_product_id"
    t.index ["purchase_order_id"], name: "index_purchase_order_details_on_purchase_order_id"
    t.index ["user_id"], name: "index_purchase_order_details_on_user_id"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string "reference"
    t.bigint "provider_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_purchase_orders_on_provider_id"
    t.index ["user_id"], name: "index_purchase_orders_on_user_id"
  end

  create_table "role_permissions", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "permission_id"
    t.string "status"
    t.bigint "user_id", null: false
    t.integer "created_by", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
    t.index ["role_id"], name: "index_role_permissions_on_role_id"
    t.index ["user_id"], name: "index_role_permissions_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "stock_movement_details", force: :cascade do |t|
    t.bigint "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.bigint "stock_movement_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stock_movement_details_on_product_id"
    t.index ["stock_movement_id"], name: "index_stock_movement_details_on_stock_movement_id"
    t.index ["user_id"], name: "index_stock_movement_details_on_user_id"
  end

  create_table "stock_movements", force: :cascade do |t|
    t.string "reference"
    t.bigint "movement_type_id"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_type_id"], name: "index_stock_movements_on_movement_type_id"
    t.index ["user_id"], name: "index_stock_movements_on_user_id"
  end

  create_table "unities", force: :cascade do |t|
    t.string "name"
    t.string "unity_symbol"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_unities_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "user_id"
    t.integer "created_by", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
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

  add_foreign_key "companies", "users"
  add_foreign_key "customer_types", "users"
  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "users"
  add_foreign_key "delivery_men", "users"
  add_foreign_key "deposits", "users"
  add_foreign_key "movement_types", "users"
  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "products"
  add_foreign_key "order_details", "users"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "users"
  add_foreign_key "permissions", "users"
  add_foreign_key "product_categories", "users"
  add_foreign_key "product_types", "users"
  add_foreign_key "products", "deposits"
  add_foreign_key "products", "product_categories"
  add_foreign_key "products", "unities"
  add_foreign_key "products", "users"
  add_foreign_key "providers", "users"
  add_foreign_key "purchase_order_details", "products"
  add_foreign_key "purchase_order_details", "purchase_orders"
  add_foreign_key "purchase_order_details", "users"
  add_foreign_key "purchase_orders", "providers"
  add_foreign_key "purchase_orders", "users"
  add_foreign_key "role_permissions", "permissions"
  add_foreign_key "role_permissions", "roles"
  add_foreign_key "role_permissions", "users"
  add_foreign_key "roles", "users"
  add_foreign_key "stock_movement_details", "products"
  add_foreign_key "stock_movement_details", "stock_movements"
  add_foreign_key "stock_movement_details", "users"
  add_foreign_key "stock_movements", "movement_types"
  add_foreign_key "stock_movements", "users"
  add_foreign_key "unities", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
