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

ActiveRecord::Schema.define(version: 20161225034323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name",                       null: false
    t.string "description",   default: ""
    t.string "measures",      default: ""
    t.string "important_for", default: ""
  end

  create_table "class_names", force: :cascade do |t|
    t.string  "name",                              null: false
    t.string  "short_description",    default: ""
    t.string  "description",          default: ""
    t.string  "subheading_one",       default: ""
    t.string  "subheading_two",       default: ""
    t.string  "creating_a",           default: ""
    t.string  "quick_build",          default: ""
    t.integer "hit_die",                           null: false
    t.string  "armor_proficiencies",  default: ""
    t.string  "weapon_proficiencies", default: ""
    t.string  "tools",                default: ""
    t.string  "skill_choice",         default: ""
  end

  create_table "class_primary_abilities", force: :cascade do |t|
    t.integer "class_name_id", null: false
    t.integer "ability_id",    null: false
  end

  create_table "class_saving_throws", force: :cascade do |t|
    t.integer "class_name_id", null: false
    t.integer "ability_id",    null: false
  end

  create_table "class_skills", force: :cascade do |t|
    t.integer "class_name_id", null: false
    t.integer "skill_id",      null: false
  end

  create_table "feats", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "requirements"
    t.string "bonuses"
  end

  create_table "joins_equipment", force: :cascade do |t|
    t.integer "race_id",      null: false
    t.integer "equipment_id", null: false
  end

  create_table "joins_languages", force: :cascade do |t|
    t.integer "race_id"
    t.integer "class_id"
    t.integer "background_id"
    t.integer "trait_id"
    t.integer "feat_id"
    t.integer "language_id",   null: false
  end

  create_table "joins_skills", force: :cascade do |t|
    t.integer "race_id",  null: false
    t.integer "skill_id", null: false
  end

  create_table "joins_traits", force: :cascade do |t|
    t.integer "race_id",  null: false
    t.integer "trait_id", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name",                      null: false
    t.string "script", default: "Common"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "class_name_id",                    null: false
    t.string  "subclass",                         null: false
    t.integer "number",                           null: false
    t.integer "prof_bonus",           default: 0
    t.integer "rage_count",           default: 0
    t.integer "rage_damage_bonus",    default: 0
    t.integer "cantrips_known",       default: 0
    t.integer "spells_known",         default: 0
    t.integer "spell_slots_level_01", default: 0
    t.integer "spell_slots_level_02", default: 0
    t.integer "spell_slots_level_03", default: 0
    t.integer "spell_slots_level_04", default: 0
    t.integer "spell_slots_level_05", default: 0
    t.integer "spell_slots_level_06", default: 0
    t.integer "spell_slots_level_07", default: 0
    t.integer "spell_slots_level_08", default: 0
    t.integer "spell_slots_level_09", default: 0
    t.integer "martial_arts",         default: 0
    t.integer "ki_points",            default: 0
    t.integer "unarmored_movement",   default: 0
    t.integer "sneak_attack",         default: 0
    t.integer "sorcery_points",       default: 0
    t.integer "spell_slots",          default: 0
    t.integer "slot_level",           default: 0
    t.integer "invocations_known",    default: 0
  end

  create_table "races", force: :cascade do |t|
    t.string  "name",                                              null: false
    t.string  "subrace"
    t.text    "desc",                      default: ""
    t.integer "speed",                     default: 0
    t.integer "darkvision",                default: 0
    t.string  "ability_bonuses",           default: "0,0,0,0,0,0"
    t.integer "min_age",                   default: 0
    t.integer "max_age",                   default: 0
    t.string  "age_description",           default: ""
    t.string  "size",                      default: ""
    t.string  "size_description",          default: ""
    t.integer "min_height",                default: 0
    t.integer "max_height",                default: 0
    t.integer "min_weight",                default: 0
    t.integer "max_weight",                default: 0
    t.integer "extra_skill_proficiencies", default: 0
    t.string  "weapon_proficiencies",      default: ""
    t.string  "armor_proficiencies",       default: ""
  end

  create_table "skills", force: :cascade do |t|
    t.string  "name",                    null: false
    t.integer "ability_id",              null: false
    t.string  "desc",       default: ""
  end

  create_table "traits", force: :cascade do |t|
    t.string "race_name",                null: false
    t.string "description", default: ""
    t.string "range",       default: ""
  end

end
