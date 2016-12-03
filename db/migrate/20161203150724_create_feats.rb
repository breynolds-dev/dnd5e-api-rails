class CreateFeats < ActiveRecord::Migration[5.0]
  def change
    create_table :feats do |t|
      t.string :name
      t.string :description
      t.string :requirements
      t.string :bonuses
    end
  end
end
