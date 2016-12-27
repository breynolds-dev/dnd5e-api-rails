class CreateClassNames < ActiveRecord::Migration[5.0]
  def change
    create_table :class_names do |t|
      t.string :name, null: false
      t.string :short_description, default: ''
      t.string :description, default: ''
      t.string :subheading_one, default: ''
      t.string :subheading_two, default: ''
      t.string :description, default: ''
      t.string :creating_a, default: ''
      t.string :quick_build, default: ''
      t.integer :hit_die, null: false
      t.string :armor_proficiencies, default: ''
      t.string :weapon_proficiencies, default: ''
      t.string :tools, default: ''
      t.string :skill_choice, default: ''
    end
  end
end
