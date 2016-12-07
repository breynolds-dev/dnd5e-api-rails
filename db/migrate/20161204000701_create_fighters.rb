class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|
      t.string :archetype
      t.integer :level
      t.integer :prof_bonus
    end
  end
end
