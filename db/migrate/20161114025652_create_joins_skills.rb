class CreateJoinsSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :joins_skills do |t|
      t.integer :race_id, null: false
      t.integer :skill_id, null: false
    end
  end
end
