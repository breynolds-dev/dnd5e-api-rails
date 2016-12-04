class CreateMonks < ActiveRecord::Migration[5.0]
  def change
    create_table :monks do |t|

      t.timestamps
    end
  end
end
