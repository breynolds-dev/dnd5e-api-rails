class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.interger :ability_id
      t.string :desc
    end
  end
end
