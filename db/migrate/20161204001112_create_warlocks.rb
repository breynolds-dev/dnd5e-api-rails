class CreateWarlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :warlocks do |t|
      t.string :subclass
      t.integer :level
      t.integer :prof_bonus
      t.integer :cantrips_known
      t.integer :spells_known
      t.integer :spell_slots
      t.integer :slot_level
      t.integer :invocations_known
    end
  end
end
