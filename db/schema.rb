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

ActiveRecord::Schema.define(version: 20140201081115) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.string "uniqueid"
    t.string "herbarium",  limit: 24
    t.string "accession",  limit: 60
    t.string "barcode",    limit: 60
    t.string "collector",  limit: 120
    t.string "collnumber", limit: 150
    t.string "colldate",   limit: 45
    t.string "country",    limit: 54
    t.string "province",   limit: 60
    t.string "county",     limit: 75
    t.string "locality"
    t.string "latitude"
    t.string "longitude"
    t.string "created_at"
    t.string "updated_at"
    t.string "address"
  end

  create_table "gazetteers", force: true do |t|
    t.string   "full_address"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "user_id"
  end

  create_table "geolocations", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location_file_name"
    t.string   "location_content_type"
    t.integer  "location_file_size"
    t.datetime "location_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "points", force: true do |t|
    t.integer  "tracksegment_id"
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "elevation"
    t.string   "description"
    t.datetime "point_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "points", ["tracksegment_id"], name: "index_points_on_tracksegment_id", using: :btree

  create_table "tdwg_gazetteers", force: true do |t|
    t.string   "gazetteer"
    t.text     "description"
    t.integer  "tdwg_level_four_id"
    t.string   "kew_region"
    t.string   "kew_region_code"
    t.string   "kew_region_subdivison"
    t.string   "synonym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdwg_level_fours", force: true do |t|
    t.string   "country"
    t.text     "description"
    t.integer  "tdwg_level_three_id"
    t.string   "code"
    t.string   "iso_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdwg_level_ones", force: true do |t|
    t.string   "continent"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdwg_level_threes", force: true do |t|
    t.string   "area"
    t.text     "description"
    t.integer  "tdwg_level_two_id"
    t.string   "code"
    t.string   "iso_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdwg_level_twos", force: true do |t|
    t.string   "region"
    t.text     "description"
    t.integer  "tdwg_level_one_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "gpx_file_name"
    t.string   "gpx_content_type"
    t.integer  "gpx_file_size"
    t.datetime "gpx_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracksegments", force: true do |t|
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracksegments", ["track_id"], name: "index_tracksegments_on_track_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
