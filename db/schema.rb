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

ActiveRecord::Schema.define(version: 20170305163725) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "hotel_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_assignments_on_hotel_id"
    t.index ["service_id"], name: "index_assignments_on_service_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "review_id"
    t.index ["review_id"], name: "index_comments_on_review_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "website"
    t.string   "name"
    t.string   "location"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "message"
    t.decimal  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "hotel_id"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "verified",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "password"
  end

end
