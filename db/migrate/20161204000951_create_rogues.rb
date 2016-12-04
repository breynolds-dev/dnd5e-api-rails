class CreateRogues < ActiveRecord::Migration[5.0]
  def change
    create_table :rogues do |t|

      t.timestamps
    end
  end
end
