class CreateClassSavingThrows < ActiveRecord::Migration[5.0]
  def change
    create_table :class_saving_throws do |t|
      t.integer :class_name_id, null: false
      t.integer :ability_id, null: false
    end
  end
end
