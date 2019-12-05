class CreateGoingToRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :going_to_raids do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :plan_raid, foreign_key: true

      t.timestamps
    end
  end
end
