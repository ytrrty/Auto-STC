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

ActiveRecord::Schema.define(version: 20150203090949) do

  create_table "cars", force: :cascade do |t|
    t.string   "name",                    limit: 255,   null: false
    t.text     "description",             limit: 65535, null: false
    t.integer  "year",                    limit: 4,     null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "prev_image_file_name",    limit: 255
    t.string   "prev_image_content_type", limit: 255
    t.integer  "prev_image_file_size",    limit: 4
    t.datetime "prev_image_updated_at"
  end

  create_table "colors", force: :cascade do |t|
    t.integer  "configuration_id", limit: 4,   null: false
    t.string   "name",             limit: 255, null: false
    t.string   "hex",              limit: 255, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "colors", ["configuration_id"], name: "index_colors_on_configuration_id", using: :btree

  create_table "configurations", force: :cascade do |t|
    t.integer  "car_id",             limit: 4,   null: false
    t.integer  "price",              limit: 4,   null: false
    t.integer  "mass",               limit: 4,   null: false
    t.integer  "width",              limit: 4,   null: false
    t.integer  "height",             limit: 4,   null: false
    t.integer  "length",             limit: 4,   null: false
    t.integer  "wheelbase",          limit: 4,   null: false
    t.integer  "volume_engine",      limit: 4,   null: false
    t.integer  "count_p",            limit: 4,   null: false
    t.float    "speed_100",          limit: 24,  null: false
    t.integer  "max_speed",          limit: 4,   null: false
    t.float    "consumption_city",   limit: 24,  null: false
    t.float    "consumption_suburb", limit: 24,  null: false
    t.float    "consumption_combo",  limit: 24,  null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "fuel",               limit: 4,   null: false
    t.integer  "gear",               limit: 4,   null: false
    t.integer  "body",               limit: 4,   null: false
    t.integer  "kpp",                limit: 4,   null: false
    t.string   "name",               limit: 255, null: false
  end

  add_index "configurations", ["car_id"], name: "index_configurations_on_car_id", using: :btree

  create_table "dealer_cars", force: :cascade do |t|
    t.integer  "count",            limit: 4, null: false
    t.integer  "dealer_id",        limit: 4, null: false
    t.integer  "configuration_id", limit: 4, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "dealer_cars", ["configuration_id"], name: "index_dealer_cars_on_configuration_id", using: :btree
  add_index "dealer_cars", ["dealer_id"], name: "index_dealer_cars_on_dealer_id", using: :btree

  create_table "dealers", force: :cascade do |t|
    t.string   "name",       limit: 255,               null: false
    t.string   "mail",       limit: 255,               null: false
    t.string   "phone",      limit: 255,               null: false
    t.string   "address",    limit: 255,               null: false
    t.string   "fax",        limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.float    "map_y",      limit: 24,  default: 0.0
    t.float    "map_x",      limit: 24,  default: 0.0
  end

  create_table "feature_configurations", force: :cascade do |t|
    t.integer  "feature_id",       limit: 4,                 null: false
    t.integer  "configuration_id", limit: 4,                 null: false
    t.boolean  "status",           limit: 1, default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "feature_configurations", ["configuration_id"], name: "index_feature_configurations_on_configuration_id", using: :btree
  add_index "feature_configurations", ["feature_id"], name: "index_feature_configurations_on_feature_id", using: :btree

  create_table "features", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "typec",       limit: 4,   null: false
  end

  add_foreign_key "colors", "configurations"
  add_foreign_key "configurations", "cars"
  add_foreign_key "dealer_cars", "configurations"
  add_foreign_key "dealer_cars", "dealers"
  add_foreign_key "feature_configurations", "configurations"
  add_foreign_key "feature_configurations", "features"
end
