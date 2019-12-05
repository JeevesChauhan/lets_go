class CreateLandMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :land_marks do |t|
      t.string :name
      t.boolean :is_gym
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
