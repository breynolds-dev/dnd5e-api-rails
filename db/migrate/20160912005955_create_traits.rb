class CreateTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :traits do |t|
      t.string :race_name, null: false
      t.string :description, default: ''
      t.string :range, default: ''
    end
  end
end
