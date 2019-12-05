class CreateSpotRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_raids do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :land_mark, foreign_key: true
      t.belongs_to :pokemon, foreign_key: true
      t.integer :tier
      t.time :remaining_time

      t.timestamps
    end
  end
end
