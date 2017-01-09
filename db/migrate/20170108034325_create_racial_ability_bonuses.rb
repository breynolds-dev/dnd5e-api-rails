class CreateRacialAbilityBonuses < ActiveRecord::Migration[5.0]
  def change
    create_table :racial_ability_bonuses do |t|
      t.integer :race_id, null: false
      t.integer :ability_id, null: false
      t.integer :bonus, null: false
    end
  end
end
