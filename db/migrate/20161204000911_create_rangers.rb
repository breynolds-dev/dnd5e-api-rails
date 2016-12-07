class CreateRangers < ActiveRecord::Migration[5.0]
  def change
    create_table :rangers do |t|
      t.string :archetype
      t.integer :level
      t.integer :prof_bonus
      t.integer :spells_known
      t.integer :spell_slots_level_01
      t.integer :spell_slots_level_02
      t.integer :spell_slots_level_03
      t.integer :spell_slots_level_04
      t.integer :spell_slots_level_05
    end
  end
end
