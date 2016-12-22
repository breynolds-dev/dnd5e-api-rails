class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :desc
      t.string :measures
      t.string :important_for
    end
  end
end
