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

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "slug"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.string "slug"
    t.integer "user_id", null: false
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
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_type_id"
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
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_delivery_men_on_user_id"
  end

  create_table "deposits", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deposits_on_user_id"
  end

  create_table "movement_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_movement_types_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.integer "order_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "reference"
    t.integer "customer_id"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.text "description"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_permissions_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_categories_on_user_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_types_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "unity_id"
    t.float "unit_price"
    t.integer "deposit_id"
    t.string "status"
    t.integer "product_category_id"
    t.integer "user_id"
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
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "purchase_order_details", force: :cascade do |t|
    t.integer "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.integer "purchase_order_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purchase_order_details_on_product_id"
    t.index ["purchase_order_id"], name: "index_purchase_order_details_on_purchase_order_id"
    t.index ["user_id"], name: "index_purchase_order_details_on_user_id"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string "reference"
    t.integer "provider_id"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_purchase_orders_on_provider_id"
    t.index ["user_id"], name: "index_purchase_orders_on_user_id"
  end

  create_table "role_permissions", force: :cascade do |t|
    t.integer "role_id"
    t.integer "permission_id"
    t.string "status"
    t.integer "user_id", null: false
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
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "stock_movement_details", force: :cascade do |t|
    t.integer "product_id"
    t.float "unit_price"
    t.integer "quantity"
    t.float "amount"
    t.string "status"
    t.integer "stock_movement_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stock_movement_details_on_product_id"
    t.index ["stock_movement_id"], name: "index_stock_movement_details_on_stock_movement_id"
    t.index ["user_id"], name: "index_stock_movement_details_on_user_id"
  end

  create_table "stock_movements", force: :cascade do |t|
    t.string "reference"
    t.integer "movement_type_id"
    t.string "status"
    t.integer "user_id"
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
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_unities_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
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

end
