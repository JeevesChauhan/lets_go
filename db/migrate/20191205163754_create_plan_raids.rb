class CreatePlanRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_raids do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :spot_raid, foreign_key: true
      t.time :start_time

      t.timestamps
    end
  end
end
