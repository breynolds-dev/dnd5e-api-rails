class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :subrace
      t.text :description
      t.integer :speed
      t.integer :darkvision
      t.string :ability_bonuses
      t.integer :min_age
      t.integer :max_age
      t.string :age_description
      t.string :size
      t.string :size_description
      t.integer :min_height
      t.integer :max_height
      t.integer :min_weight
      t.integer :max_weight
      t.integer :extra_skill_proficiencies
      t.string :weapon_proficiencies
      t.string :armor_proficiencies
    end
  end
end
