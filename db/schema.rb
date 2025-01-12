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

ActiveRecord::Schema.define(version: 20221112154601) do

  create_table "guests", force: :cascade do |t|
    t.integer "timeslot_id"
    t.integer "user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "avatar"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender",      default: "Prefer not to say"
    t.date     "birth"
    t.string   "phone"
    t.string   "preference"
    t.integer  "user_id",                                   null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "rating"
    t.string   "address"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.datetime "start_time"
    t.integer  "max_number"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.boolean  "is_admin",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "email_confirmed"
    t.string   "confirm_token"
  end

end
