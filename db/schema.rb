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

ActiveRecord::Schema.define(version: 20161222214319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "measures"
    t.string "important_for"
  end

  create_table "barbarians", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "rage_count"
    t.integer "rage_damage_bonus"
  end

  create_table "bards", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spells_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
    t.integer "spell_slots_level_06"
    t.integer "spell_slots_level_07"
    t.integer "spell_slots_level_08"
    t.integer "spell_slots_level_09"
  end

  create_table "clerics", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
    t.integer "spell_slots_level_06"
    t.integer "spell_slots_level_07"
    t.integer "spell_slots_level_08"
    t.integer "spell_slots_level_09"
  end

  create_table "druids", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
    t.integer "spell_slots_level_06"
    t.integer "spell_slots_level_07"
    t.integer "spell_slots_level_08"
    t.integer "spell_slots_level_09"
  end

  create_table "feats", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "requirements"
    t.string "bonuses"
  end

  create_table "fighters", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spells_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
  end

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

  create_table "monks", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "martial_arts"
    t.integer "ki_points"
    t.integer "unarmored_movement"
  end

  create_table "paladins", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
  end

  create_table "races", force: :cascade do |t|
    t.string  "name"
    t.string  "subrace"
    t.text    "desc"
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

  create_table "rangers", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "spells_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
  end

  create_table "rogues", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "sneak_attack"
    t.integer "cantrips_known"
    t.integer "spells_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
  end

  create_table "skills", force: :cascade do |t|
    t.string  "name"
    t.integer "ability_id"
    t.string  "desc"
  end

  create_table "sorcerers", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "sorcery_points"
    t.integer "cantrips_known"
    t.integer "spells_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
    t.integer "spell_slots_level_06"
    t.integer "spell_slots_level_07"
    t.integer "spell_slots_level_08"
    t.integer "spell_slots_level_09"
  end

  create_table "traits", force: :cascade do |t|
    t.string "race_name"
    t.string "description"
    t.string "range"
  end

  create_table "warlocks", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spells_known"
    t.integer "spell_slots"
    t.integer "slot_level"
    t.integer "invocations_known"
  end

  create_table "wizards", force: :cascade do |t|
    t.string  "subclass"
    t.integer "level"
    t.integer "prof_bonus"
    t.integer "cantrips_known"
    t.integer "spell_slots_level_01"
    t.integer "spell_slots_level_02"
    t.integer "spell_slots_level_03"
    t.integer "spell_slots_level_04"
    t.integer "spell_slots_level_05"
    t.integer "spell_slots_level_06"
    t.integer "spell_slots_level_07"
    t.integer "spell_slots_level_08"
    t.integer "spell_slots_level_09"
  end

end
