class CreateBarbarians < ActiveRecord::Migration[5.0]
  def change
    create_table :barbarians do |t|
      t.string  :subclass
      t.integer :level
      t.integer :prof_bonus
      t.integer :rage_count
      t.integer :rage_damage
    end
  end
end
# I'm so sorry
