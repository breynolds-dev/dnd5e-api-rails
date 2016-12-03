class CreateDruids < ActiveRecord::Migration[5.0]
  def change
    create_table :druids do |t|

      t.timestamps
    end
  end
end
