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

ActiveRecord::Schema.define(version: 20141217050723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airfares", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "to_airport"
    t.string   "airfare_type"
    t.string   "from_airport"
  end

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "guides", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guide_type"
    t.string   "contact"
  end

  create_table "hotels", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "rank"
    t.string   "star"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact"
    t.string   "description"
    t.integer  "destination_id"
  end

  create_table "local_transpotations", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact"
  end

  create_table "packages", force: true do |t|
    t.integer  "destination_id"
    t.integer  "airfare_id"
    t.integer  "local_transpotation_id"
    t.integer  "guide_id"
    t.string   "travel_detail"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "from_date"
    t.string   "to_date"
    t.string   "no_of_adult"
    t.string   "no_of_child"
  end

  create_table "travel_packages", force: true do |t|
    t.string   "name"
    t.integer  "airfare_id"
    t.integer  "local_transpotation_id"
    t.integer  "guide_id"
    t.string   "travel_detail"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "price"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
