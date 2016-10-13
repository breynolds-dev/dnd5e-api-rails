class CreateJoinsEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :joins_equipment do |t|
      t.integer :race_id
      t.integer :equipment_id
    end
  end
end
