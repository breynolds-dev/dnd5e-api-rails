class CreateJoinsSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :joins_skills do |t|
      t.integer :race_id
      t.integer :skill_id
    end
  end
end
