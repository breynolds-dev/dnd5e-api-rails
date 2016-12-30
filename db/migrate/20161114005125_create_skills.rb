class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.integer :ability_id, null: false
      t.string :desc, default: ''
    end
  end
end
