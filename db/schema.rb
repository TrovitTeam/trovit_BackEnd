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

ActiveRecord::Schema.define(version: 20181028030536) do

  create_table "business_managers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "company_id"
    t.index ["company_id"], name: "index_business_managers_on_company_id"
    t.index ["user_id"], name: "index_business_managers_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "companyType"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "distributor_has_business_managers", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "distributor_id"
    t.integer  "business_manager_id"
    t.index ["business_manager_id"], name: "index_business_manager_id"
    t.index ["distributor_id"], name: "index_distributor_has_business_managers_on_distributor_id"
  end

  create_table "distributors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_distributors_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "message"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "distributor_id"
    t.integer  "business_manager_id"
    t.index ["business_manager_id"], name: "index_messages_on_business_manager_id"
    t.index ["distributor_id"], name: "index_messages_on_distributor_id"
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "message_id"
    t.integer  "product_id"
    t.integer  "distributor_id"
    t.index ["distributor_id"], name: "index_offers_on_distributor_id"
    t.index ["message_id"], name: "index_offers_on_message_id"
    t.index ["product_id"], name: "index_offers_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "product_id"
    t.integer  "message_id"
    t.integer  "business_manager_id"
    t.index ["business_manager_id"], name: "index_orders_on_business_manager_id"
    t.index ["message_id"], name: "index_orders_on_message_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "pictureType"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "pictureUrl"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.string   "image"
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "products", force: :cascade do |t|
    t.float    "price"
    t.string   "producType"
    t.string   "brand"
    t.string   "productName"
    t.integer  "quantity"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "distributor_id"
    t.index ["distributor_id"], name: "index_products_on_distributor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "email",                                   null: false
    t.integer  "phone"
    t.string   "userType",        default: "distributor", null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "password_digest"
    t.string   "token"
  end

end
