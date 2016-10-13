class CreateJoinsTrait < ActiveRecord::Migration[5.0]
  def change
    create_table :joins_trait do |t|
      t.integer :race_id
      t.integer :trait_id
    end
  end
end
