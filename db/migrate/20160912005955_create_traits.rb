class CreateTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :traits do |t|
      t.string :race_name
      t.string :description
      t.string :range
    end
  end
end
