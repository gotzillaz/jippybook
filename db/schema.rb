# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150508152831) do

  create_table "addresses", force: :cascade do |t|
    t.text     "address",                 null: false
    t.text     "district",                null: false
    t.text     "province",                null: false
    t.text     "zipcode",                 null: false
    t.integer  "user_id",                 null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "firstname",  default: "", null: false
    t.text     "lastname",   default: "", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer  "category_id", null: false
    t.text     "name",        null: false
    t.text     "description", null: false
    t.text     "img",         null: false
    t.float    "price",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cart_users", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "book_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id",   null: false
    t.integer  "book_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",                       null: false
    t.integer  "payment_method_id",             null: false
    t.float    "price",                         null: false
    t.integer  "count",                         null: false
    t.datetime "order_date",                    null: false
    t.datetime "send_date",                     null: false
    t.text     "status",                        null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "address_id",        default: 0, null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.text     "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "order_id",    null: false
    t.text     "description", null: false
    t.binary   "img",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "book_id",     null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                         null: false
    t.string   "password_digest",                  null: false
    t.string   "email",                            null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "user_type",       default: "user", null: false
  end

end
