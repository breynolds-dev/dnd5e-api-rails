class CreateFeats < ActiveRecord::Migration[5.0]
  def change
    create_table :feats do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :prerequisites, default: ''
    end
  end
end
