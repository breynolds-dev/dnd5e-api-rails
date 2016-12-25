class CreateClassNames < ActiveRecord::Migration[5.0]
  def change
    create_table :class_names do |t|
      t.string :name, null: false
      t.string :desc, default: ''
      t.string :creating_a, default: ''
      t.string :quick_build, default: ''
      t.string :armor_proficiencies, default: ''
      t.string :weapon_proficiencies, default: ''
      t.string :tools, default: ''
    end
  end
end
