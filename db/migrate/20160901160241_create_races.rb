class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.string :subrace, default: nil
      t.text :desc, default: ''
      t.integer :speed, default: 0
      t.integer :darkvision, default: 0
      t.integer :min_age, default: 0
      t.integer :max_age, default: 0
      t.string :age_description, default: ''
      t.string :alignment, default: ''
      t.string :size, default: ''
      t.string :size_description, default: ''
      t.integer :min_height, default: 0
      t.integer :max_height, default: 0
      t.integer :min_weight, default: 0
      t.integer :max_weight, default: 0
      t.integer :extra_skill_proficiencies, default: 0
      t.string :weapon_proficiencies, default: ''
      t.string :armor_proficiencies, default: ''
    end
  end
end
