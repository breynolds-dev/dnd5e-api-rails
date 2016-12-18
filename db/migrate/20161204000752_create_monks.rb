class CreateMonks < ActiveRecord::Migration[5.0]
  def change
    create_table :monks do |t|
      t.string :subclass
      t.integer :level
      t.integer :prof_bonus
      t.integer :martial_arts
      t.integer :ki_points
      t.integer :unarmored_movement
    end
  end
end
