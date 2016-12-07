class CreateRogues < ActiveRecord::Migration[5.0]
  def change
    create_table :rogues do |t|
      t.string :archetype
      t.integer :level
      t.integer :prof_bonus
      t.integer :sneak_attack
    end
  end
end
