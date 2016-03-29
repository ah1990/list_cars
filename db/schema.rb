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

ActiveRecord::Schema.define(version: 20160328125217) do

  create_table "car_images", force: :cascade do |t|
    t.string   "image_name"
    t.integer  "car_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "car_images", ["car_id"], name: "index_car_images_on_car_id"

  create_table "cars", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.string   "number"
    t.string   "pts"
    t.datetime "pts_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
