class CreateJoinsTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :joins_traits do |t|
      t.integer :race_id, null: false
      t.integer :trait_id, null: false
    end
  end
end
