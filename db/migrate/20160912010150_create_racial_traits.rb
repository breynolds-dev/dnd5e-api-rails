class CreateRacialTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :racial_traits do |t|
      t.integer :race_id, null: false
      t.integer :trait_id, null: false
    end
  end
end
