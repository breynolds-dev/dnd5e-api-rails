class CreateRacialLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :racial_languages do |t|
      t.integer :race_id
      t.integer :class_id
      t.integer :background_id
      t.integer :trait_id
      t.integer :feat_id
      t.integer :language_id, null: false
    end
  end
end
