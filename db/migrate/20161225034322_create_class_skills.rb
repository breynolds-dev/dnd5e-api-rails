class CreateClassSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :class_skills do |t|
      t.integer :class_name_id, null: false
      t.integer :skill_id, null: false
    end
  end
end
