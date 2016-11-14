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

ActiveRecord::Schema.define(version: 20161114025652) do

  create_table "joins_equipment", force: :cascade do |t|
    t.integer "race_id"
    t.integer "equipment_id"
  end

  create_table "joins_languages", force: :cascade do |t|
    t.integer "race_id"
    t.integer "class_id"
    t.integer "background_id"
    t.integer "trait_id"
    t.integer "feat_id"
    t.integer "language_id"
  end

  create_table "joins_skills", force: :cascade do |t|
    t.integer "race_id"
    t.integer "skill_id"
  end

  create_table "joins_traits", force: :cascade do |t|
    t.integer "race_id"
    t.integer "trait_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "script"
  end

  create_table "races", force: :cascade do |t|
    t.string  "name"
    t.string  "subrace"
    t.text    "description"
    t.integer "speed"
    t.integer "darkvision"
    t.string  "ability_bonuses"
    t.integer "min_age"
    t.integer "max_age"
    t.string  "age_description"
    t.string  "size"
    t.string  "size_description"
    t.integer "min_height"
    t.integer "max_height"
    t.integer "min_weight"
    t.integer "max_weight"
    t.integer "extra_skill_proficiencies"
    t.string  "weapon_proficiencies"
    t.string  "armor_proficiencies"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability"
  end

  create_table "traits", force: :cascade do |t|
    t.string "race_name"
    t.string "description"
    t.string "range"
  end

end
