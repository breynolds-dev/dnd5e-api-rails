class CreateDruids < ActiveRecord::Migration[5.0]
  def change
    create_table :druids do |t|
      t.string :subclass
      t.integer :level
      t.integer :prof_bonus
      t.integer :cantrips_known
      t.integer :spell_slots_level_01
      t.integer :spell_slots_level_02
      t.integer :spell_slots_level_03
      t.integer :spell_slots_level_04
      t.integer :spell_slots_level_05
      t.integer :spell_slots_level_06
      t.integer :spell_slots_level_07
      t.integer :spell_slots_level_08
      t.integer :spell_slots_level_09
    end
  end
end
