class GoingToRaid < ApplicationRecord

  # Validation
  # Presence check
  validates :user_id, :plan_raid_id, presence: true

  belongs_to :user
  belongs_to :plan_raid
end
