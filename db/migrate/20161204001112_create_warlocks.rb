class CreateWarlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :warlocks do |t|

      t.timestamps
    end
  end
end
