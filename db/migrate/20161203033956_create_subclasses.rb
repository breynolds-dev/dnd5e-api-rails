class CreateSubclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :subclasses do |t|
      t.integer :class_name_id, null: false
      t.string  :name, null: false
      t.string  :description, null: false
    end
  end
end
