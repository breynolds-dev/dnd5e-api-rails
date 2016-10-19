class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      
      t.string   :race_name
      t.text     :description
      t.integer  :strength
      t.integer  :dexterity
      t.integer  :constitution
      t.integer  :intelligence
      t.integer  :wisdom
      t.integer  :charisma
      t.string   :age_description
      t.integer  :age_min
      t.integer  :age_max
      t.string   :size_description
      t.string   :size
      t.integer  :min_height
      t.integer  :max_height
      t.integer  :min_weight
      t.integer  :max_weight
      t.integer  :speed
      t.string   :misc
    end
  end
end
