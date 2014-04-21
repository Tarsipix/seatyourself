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

ActiveRecord::Schema.define(version: 20140417204403) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.datetime "time"
    t.integer  "customer_id"
    t.integer  "restaurant_id"
    t.integer  "party_size"
    t.integer  "min_seats"
    t.integer  "max_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "phone"
    t.string   "photo_url"
    t.integer  "category_id"
    t.integer  "owner_id"
    t.integer  "capacity"
    t.time     "open_from"
    t.time     "open_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "points"
    t.string   "email"
    t.string   "password_digest"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
