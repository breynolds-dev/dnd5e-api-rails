class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.integer :class_name_id, null: false
      t.string  :subclass, null: false
      t.integer :number, null: false
      t.integer :prof_bonus, default: 0
      t.integer :rage_count, default: 0
      t.integer :rage_damage_bonus, default: 0
      t.integer :cantrips_known, default: 0
      t.integer :spells_known, default: 0
      t.integer :spell_slots_level_01, default: 0
      t.integer :spell_slots_level_02, default: 0
      t.integer :spell_slots_level_03, default: 0
      t.integer :spell_slots_level_04, default: 0
      t.integer :spell_slots_level_05, default: 0
      t.integer :spell_slots_level_06, default: 0
      t.integer :spell_slots_level_07, default: 0
      t.integer :spell_slots_level_08, default: 0
      t.integer :spell_slots_level_09, default: 0
      t.integer :martial_arts, default: 0
      t.integer :ki_points, default: 0
      t.integer :unarmored_movement, default: 0
      t.integer :sneak_attack, default: 0
      t.integer :sorcery_points, default: 0
      t.integer :spell_slots, default: 0
      t.integer :slot_level, default: 0
      t.integer :invocations_known, default: 0
    end
  end
end
