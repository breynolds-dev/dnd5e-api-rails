class CreateClerics < ActiveRecord::Migration[5.0]
  def change
    create_table :clerics do |t|

      t.timestamps
    end
  end
end
