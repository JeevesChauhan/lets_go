class PlanRaid < ApplicationRecord
  belongs_to :user
  belongs_to :spot_raid

  has_one :going_to_raids
end
