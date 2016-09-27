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

ActiveRecord::Schema.define(version: 20160912010150) do

  create_table "joins_languages", force: :cascade do |t|
    t.integer "race_id"
    t.integer "class_id"
    t.integer "background_id"
    t.integer "trait_id"
    t.integer "feat_id"
    t.integer "language_id"
  end

  create_table "joins_traits", force: :cascade do |t|
    t.integer "race_id"
    t.integer "trait_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "script"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "race_name"
    t.text     "description"
    t.string   "stats"
    t.string   "age_description"
    t.integer  "age_min"
    t.integer  "age_max"
    t.string   "size_description"
    t.string   "size"
    t.integer  "min_height"
    t.integer  "max_height"
    t.integer  "min_weight"
    t.integer  "max_weight"
    t.integer  "speed"
    t.string   "misc"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string   "race_name"
    t.string   "description"
    t.string   "range"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
