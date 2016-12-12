class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|
      t.string :archetype
      t.integer :level
      t.integer :prof_bonus
      t.integer :cantrips_known
      t.integer :spells_known
      t.integer :spell_slots_level_01
      t.integer :spell_slots_level_02
      t.integer :spell_slots_level_03
      t.integer :spell_slots_level_04
    end
  end
end
