class CreateBards < ActiveRecord::Migration[5.0]
  def change
    create_table :bards do |t|

      t.timestamps
    end
  end
end
