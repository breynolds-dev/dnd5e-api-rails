class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name, null: false
      t.string :description, default: ''
      t.string :measures, default: ''
      t.string :important_for, default: ''
    end
  end
end
