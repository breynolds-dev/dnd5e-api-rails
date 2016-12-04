class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|

      t.timestamps
    end
  end
end
