class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      
      t.string :race_name
      t.text :description
      t.string :stats
      t.string :age_description
      t.string :age_min
      t.string :age_min
      t.string :size_description
      t.string :size
      t.string :min_height
      t.string :max_height
      t.string :min_weight
      t.string :max_weight
      t.string :speed
      t.string :misc

      t.timestamps
    end
  end
end
