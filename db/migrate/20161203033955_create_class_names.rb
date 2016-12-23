class CreateClassNames < ActiveRecord::Migration[5.0]
  def change
    create_table :class_names do |t|
      t.string :name
    end
  end
end
